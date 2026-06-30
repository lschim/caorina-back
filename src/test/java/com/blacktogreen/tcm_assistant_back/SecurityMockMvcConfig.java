package com.blacktogreen.tcm_assistant_back;

import static org.springframework.security.test.web.servlet.setup.SecurityMockMvcConfigurers.springSecurity;

import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.webmvc.test.autoconfigure.MockMvcBuilderCustomizer;
import org.springframework.context.annotation.Bean;

@TestConfiguration
public class SecurityMockMvcConfig {

  @Bean
  MockMvcBuilderCustomizer securityMockMvcCustomizer() {
    return builder -> builder.apply(springSecurity());
  }
}
