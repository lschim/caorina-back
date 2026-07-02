package com.blacktogreen.caorina.controller;

import static org.hamcrest.Matchers.hasSize;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.blacktogreen.caorina.DrugCategoryCreationCmdMother;
import com.blacktogreen.caorina.DrugCategoryMother;
import com.blacktogreen.caorina.DrugMother;
import com.blacktogreen.caorina.SecurityMockMvcConfig;
import com.blacktogreen.caorina.model.Drug;
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
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;
import tools.jackson.databind.ObjectMapper;

@SpringBootTest
@Testcontainers
@Transactional
@AutoConfigureMockMvc
@WithMockUser
@Import(SecurityMockMvcConfig.class)
class DrugCategoryControllerIntegrationTest {

  @ServiceConnection @Container
  static PostgreSQLContainer<?> postgres = new PostgreSQLContainer<>("postgres:16-alpine");

  @Autowired private MockMvc mvc;

  @Autowired private ObjectMapper objectMapper;

  @Autowired private EntityManager entityManager;

  @Test
  void should_create_valid_category() throws Exception {
    var cmd = DrugCategoryCreationCmdMother.one();

    mvc.perform(
            post("/api/drug-categories")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(cmd)))
        .andExpect(status().isCreated());
  }

  @Test
  void should_return_drugs_of_the_category() throws Exception {
    // GIVEN
    DrugCategory category = DrugCategoryMother.oneWithoutDrug();
    entityManager.persist(category);

    Drug drug = DrugMother.oneWithoutCategory();
    drug.setPrimaryCategory(category);
    entityManager.persist(drug);
    entityManager.flush();

    entityManager.clear();

    // WHEN
    mvc.perform(get("/api/drug-categories/" + category.getId() + "/drugs"))
        .andExpect(jsonPath("$.category").exists())
        .andExpect(jsonPath("$.drugs", hasSize(1)));
  }
}
