package com.blacktogreen.caorina.service;

import static org.assertj.core.api.Assertions.assertThat;

import com.blacktogreen.caorina.dto.DrugDetailDto;
import com.blacktogreen.caorina.dto.DrugEffectDto;
import com.blacktogreen.caorina.model.Drug;
import com.blacktogreen.caorina.model.DrugEffect;
import com.blacktogreen.caorina.model.DrugNature;
import com.blacktogreen.caorina.repository.DrugRepository;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.transaction.annotation.Transactional;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

@SpringBootTest
@ActiveProfiles("test")
@Testcontainers
@Transactional
class DrugQueryServiceIntegrationTest {

  @Container @ServiceConnection
  static PostgreSQLContainer<?> postgres = new PostgreSQLContainer<>("postgres:16-alpine");

  @Autowired private DrugRepository drugRepository;
  @Autowired private DrugQueryService drugQueryService;

  @Test
  void should_expose_yao_yao_flag_on_effects_in_drug_detail_dto() {
    Drug drug =
        Drug.builder()
            .chineseName("Shi Gao")
            .nature(DrugNature.COLD)
            .effects(
                List.of(
                    DrugEffect.builder().text("Clarifie la Chaleur du Qi").yaoYao(true).build(),
                    DrugEffect.builder().text("Calme la soif").yaoYao(false).build()))
            .build();
    Long id = drugRepository.save(drug).getId();

    DrugDetailDto dto = drugQueryService.getById(id);

    assertThat(dto.effects())
        .containsExactlyInAnyOrder(
            new DrugEffectDto("Clarifie la Chaleur du Qi", true),
            new DrugEffectDto("Calme la soif", false));
  }
}
