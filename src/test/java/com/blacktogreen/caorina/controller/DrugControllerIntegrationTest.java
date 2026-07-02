package com.blacktogreen.caorina.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import com.blacktogreen.caorina.DrugCategoryMother;
import com.blacktogreen.caorina.DrugCreationCmdMother;
import com.blacktogreen.caorina.SecurityMockMvcConfig;
import com.blacktogreen.caorina.command.DrugCreationCmd;
import com.blacktogreen.caorina.model.DrugCategory;
import jakarta.persistence.EntityManager;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;
import tools.jackson.databind.ObjectMapper;

@SpringBootTest
@ActiveProfiles("test")
@Testcontainers
@Transactional
@AutoConfigureMockMvc
@WithMockUser
@Import(SecurityMockMvcConfig.class)
class DrugControllerIntegrationTest {

  @ServiceConnection @Container
  static PostgreSQLContainer<?> postgres = new PostgreSQLContainer<>("postgres:16-alpine");

  @Autowired private MockMvc mvc;

  @Autowired private EntityManager entityManager;

  @Autowired private ObjectMapper objectMapper;

  @Test
  void should_return_404_when_category_id_does_not_exists() throws Exception {
    String body =
        """
            {
                "chineseName": "Ren Shen",
                "latinName": "Ginseng",
                "frenchName": "Ginseng",
                "nature": "WARM",
                "flavors": ["SWEET", "BITTER"],
                "tropism": ["LIVER"],
                "movements": ["ASCENDING"],
                "primaryCategoryId": 99999,
                "numberOfStars": 5
            }
            """;

    mvc.perform(post("/api/drugs").contentType(MediaType.APPLICATION_JSON).content(body))
        .andExpect(status().isNotFound());
  }

  @Test
  void should_create_valid_drug() throws Exception {
    // GIVEN
    DrugCategory validCategory = DrugCategoryMother.oneWithoutDrug();
    entityManager.persist(validCategory);

    // WHEN
    DrugCreationCmd drugCreationCmd =
        DrugCreationCmdMother.oneWithCategoryId(validCategory.getId());

    mvc.perform(
            post("/api/drugs")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(drugCreationCmd)))
        .andExpect(status().isCreated())
        .andExpect(jsonPath("$.id").exists());
  }
}
