package com.blacktogreen.caorina;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.TestPropertySource;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

/**
 * Charge en plus classpath:db/seed (contrairement au profil test standard, cf.
 * application-test.properties) pour vérifier les comptes réels après application des migrations V4
 * et V5 sur les données de production.
 */
@SpringBootTest
@ActiveProfiles("test")
@TestPropertySource(properties = "spring.flyway.locations=classpath:db/migration,classpath:db/seed")
@Testcontainers
class YaoYaoSeedMigrationIntegrationTest {

  @Container @ServiceConnection
  static PostgreSQLContainer<?> postgres = new PostgreSQLContainer<>("postgres:16-alpine");

  @Autowired private JdbcTemplate jdbcTemplate;

  @Test
  void should_have_flagged_the_expected_number_of_yao_yao_effects_after_seed_migration() {
    Integer drugEffectsCount =
        jdbcTemplate.queryForObject(
            "SELECT COUNT(*) FROM drug_effects WHERE is_yao_yao = true", Integer.class);
    assertThat(drugEffectsCount).isEqualTo(129);

    Integer associationEffectsCount =
        jdbcTemplate.queryForObject(
            "SELECT COUNT(*) FROM drug_association_effects WHERE is_yao_yao = true", Integer.class);
    assertThat(associationEffectsCount).isEqualTo(7);
  }
}
