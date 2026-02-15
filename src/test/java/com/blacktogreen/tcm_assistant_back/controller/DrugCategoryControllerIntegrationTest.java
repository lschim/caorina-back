package com.blacktogreen.tcm_assistant_back.controller;

import static org.hamcrest.Matchers.hasSize;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.blacktogreen.tcm_assistant_back.DrugCategoryCreationCmdMother;
import com.blacktogreen.tcm_assistant_back.DrugCategoryMother;
import com.blacktogreen.tcm_assistant_back.DrugMother;
import com.blacktogreen.tcm_assistant_back.model.Drug;
import com.blacktogreen.tcm_assistant_back.model.DrugCategory;
import jakarta.persistence.EntityManager;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.http.MediaType;
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
