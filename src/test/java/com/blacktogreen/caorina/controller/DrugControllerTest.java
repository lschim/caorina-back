package com.blacktogreen.caorina.controller;

import com.blacktogreen.caorina.service.DrugQueryService;
import com.blacktogreen.caorina.service.DrugService;
import com.blacktogreen.caorina.service.JwtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.webmvc.test.autoconfigure.WebMvcTest;
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
}
