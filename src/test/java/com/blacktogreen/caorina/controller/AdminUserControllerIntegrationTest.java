package com.blacktogreen.caorina.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.blacktogreen.caorina.model.AppUser;
import com.blacktogreen.caorina.model.AppUserRole;
import com.blacktogreen.caorina.service.JwtService;
import jakarta.persistence.EntityManager;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

@SpringBootTest
@ActiveProfiles("test")
@Testcontainers
@Transactional
@AutoConfigureMockMvc
class AdminUserControllerIntegrationTest {

  @ServiceConnection @Container
  static PostgreSQLContainer<?> postgres = new PostgreSQLContainer<>("postgres:16-alpine");

  @Autowired private MockMvc mvc;
  @Autowired private EntityManager entityManager;
  @Autowired private PasswordEncoder passwordEncoder;
  @Autowired private JwtService jwtService;

  private AppUser adminUser;
  private AppUser regularUser;

  @BeforeEach
  void setUp() {
    adminUser =
        new AppUser("admin@caorina.fr", passwordEncoder.encode("secret"), AppUserRole.ADMIN);
    regularUser =
        new AppUser("user@caorina.fr", passwordEncoder.encode("secret"), AppUserRole.USER);
    entityManager.persist(adminUser);
    entityManager.persist(regularUser);
    entityManager.flush();
  }

  @Test
  void createUser_shouldReturn201_whenCalledByAdmin() throws Exception {
    String token = jwtService.generateToken(adminUser);
    mvc.perform(
            post("/admin/users")
                .header("Authorization", "Bearer " + token)
                .contentType(MediaType.APPLICATION_JSON)
                .content(
                    """
                    {"email":"newuser@caorina.fr","password":"pass123","role":"USER"}
                    """))
        .andExpect(status().isCreated())
        .andExpect(jsonPath("$.email").value("newuser@caorina.fr"))
        .andExpect(jsonPath("$.role").value("USER"))
        .andExpect(jsonPath("$.id").isNotEmpty());
  }

  @Test
  void createUser_shouldReturn403_whenCalledByRegularUser() throws Exception {
    String token = jwtService.generateToken(regularUser);
    mvc.perform(
            post("/admin/users")
                .header("Authorization", "Bearer " + token)
                .contentType(MediaType.APPLICATION_JSON)
                .content(
                    """
                    {"email":"newuser@caorina.fr","password":"pass123","role":"USER"}
                    """))
        .andExpect(status().isForbidden());
  }

  @Test
  void createUser_shouldReturn401_withoutToken() throws Exception {
    mvc.perform(
            post("/admin/users")
                .contentType(MediaType.APPLICATION_JSON)
                .content(
                    """
                    {"email":"newuser@caorina.fr","password":"pass123","role":"USER"}
                    """))
        .andExpect(status().isUnauthorized());
  }
}
