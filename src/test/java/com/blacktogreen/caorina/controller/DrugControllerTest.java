package com.blacktogreen.caorina.controller;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.blacktogreen.caorina.command.DrugCreationCmd;
import com.blacktogreen.caorina.model.DrugFlavor;
import com.blacktogreen.caorina.model.DrugMovement;
import com.blacktogreen.caorina.model.DrugNature;
import com.blacktogreen.caorina.model.Organ;
import com.blacktogreen.caorina.service.DrugQueryService;
import com.blacktogreen.caorina.service.DrugService;
import com.blacktogreen.caorina.service.JwtService;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.webmvc.test.autoconfigure.WebMvcTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.bean.override.mockito.MockitoBean;
import org.springframework.test.web.servlet.MockMvc;
import tools.jackson.databind.ObjectMapper;

@WebMvcTest(DrugController.class)
@WithMockUser
class DrugControllerTest {

  @Autowired private MockMvc mockMvc;

  @MockitoBean private DrugService drugService;

  @MockitoBean private DrugQueryService drugQueryService;

  @MockitoBean private JwtService jwtService;

  @Autowired private ObjectMapper objectMapper;

  @Test
  void createDrug_shouldReturn404_whenCategoryDoesNotExist() throws Exception {
    // given
    Long missingCategoryId = 42L;

    DrugCreationCmd cmd =
        new DrugCreationCmd(
            "Ren Shen",
            "人参",
            List.of("人参"),
            "Ginseng Radix",
            "Ginseng",
            DrugNature.WARM,
            List.of(DrugFlavor.SWEET),
            List.of(Organ.SPLEEN),
            List.of(DrugMovement.ASCENDING),
            missingCategoryId,
            List.of(),
            List.of("Tonifie le Qi"),
            "3–9g",
            5,
            null);

    when(drugService.create(any(DrugCreationCmd.class)))
        .thenThrow(new NotFoundException("DrugCategory with id 42 does not exist"));

    // when / then
    mockMvc
        .perform(
            post("/api/drugs")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(cmd)))
        .andExpect(status().isNotFound());
  }
}
