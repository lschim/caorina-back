package com.blacktogreen.tcm_assistant_back.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.blacktogreen.tcm_assistant_back.model.AppUser;
import com.blacktogreen.tcm_assistant_back.model.AppUserRole;
import com.blacktogreen.tcm_assistant_back.service.JwtService;
import jakarta.persistence.EntityManager;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

@SpringBootTest
@Testcontainers
@Transactional
@AutoConfigureMockMvc
class AuthControllerIntegrationTest {

  @ServiceConnection @Container
  static PostgreSQLContainer<?> postgres =
      new PostgreSQLContainer<>("postgres:16-alpine").withReuse(true);

  @Autowired private MockMvc mvc;
  @Autowired private EntityManager entityManager;
  @Autowired private PasswordEncoder passwordEncoder;
  @Autowired private JwtService jwtService;

  private AppUser testUser;

  @BeforeEach
  void setUp() {
    testUser = new AppUser("test@tcm.fr", passwordEncoder.encode("secret"), AppUserRole.USER);
    entityManager.persist(testUser);
    entityManager.flush();
  }

  @Test
  void login_shouldReturn200WithToken_whenCredentialsAreValid() throws Exception {
    mvc.perform(
            post("/auth/login")
                .contentType(MediaType.APPLICATION_JSON)
                .content(
                    """
                    {"email":"test@tcm.fr","password":"secret"}
                    """))
        .andExpect(status().isOk())
        .andExpect(jsonPath("$.token").isNotEmpty())
        .andExpect(jsonPath("$.role").value("USER"));
  }

  @Test
  void login_shouldReturn401_whenPasswordIsWrong() throws Exception {
    mvc.perform(
            post("/auth/login")
                .contentType(MediaType.APPLICATION_JSON)
                .content(
                    """
                    {"email":"test@tcm.fr","password":"wrong"}
                    """))
        .andExpect(status().isUnauthorized());
  }

  @Test
  void login_shouldReturn401_whenEmailIsUnknown() throws Exception {
    mvc.perform(
            post("/auth/login")
                .contentType(MediaType.APPLICATION_JSON)
                .content(
                    """
                    {"email":"nobody@tcm.fr","password":"secret"}
                    """))
        .andExpect(status().isUnauthorized());
  }

  @Test
  void protectedRoute_shouldReturn401_withoutToken() throws Exception {
    mvc.perform(get("/api/drug-categories")).andExpect(status().isUnauthorized());
  }

  @Test
  void protectedRoute_shouldReturn200_withValidToken() throws Exception {
    String token = jwtService.generateToken(testUser);
    mvc.perform(get("/api/drug-categories").header("Authorization", "Bearer " + token))
        .andExpect(status().isOk());
  }
}
