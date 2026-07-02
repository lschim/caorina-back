package com.blacktogreen.caorina;

import static org.assertj.core.api.Assertions.assertThat;

import com.blacktogreen.caorina.model.Drug;
import com.blacktogreen.caorina.model.DrugAssociation;
import com.blacktogreen.caorina.model.DrugCategory;
import com.blacktogreen.caorina.model.DrugFlavor;
import com.blacktogreen.caorina.model.DrugMovement;
import com.blacktogreen.caorina.model.DrugNature;
import com.blacktogreen.caorina.model.Organ;
import com.blacktogreen.caorina.repository.DrugCategoryRepository;
import com.blacktogreen.caorina.repository.DrugRepository;
import jakarta.persistence.EntityManager;
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
class DrugPersistenceIntegrationTest {

  @Container @ServiceConnection
  static PostgreSQLContainer<?> postgres = new PostgreSQLContainer<>("postgres:16-alpine");

  @Autowired private DrugRepository drugRepository;
  @Autowired private DrugCategoryRepository drugCategoryRepository;
  @Autowired private EntityManager entityManager;

  @Test
  void should_persist_all_drug_fields_and_read_them_back_from_db() {
    DrugCategory category = new DrugCategory();
    category.setName("Plantes qui tonifient le Qi");
    category.setDescription("Substances qui renforcent le Qi déficient");
    drugCategoryRepository.save(category);

    Drug drug =
        Drug.builder()
            .chineseName("Ren Shen")
            .alternativeChineseNames(List.of("人参", "Ye Shan Shen"))
            .latinName("Radix Ginseng")
            .frenchName("Ginseng")
            .nature(DrugNature.WARM)
            .flavors(List.of(DrugFlavor.SWEET, DrugFlavor.BITTER))
            .tropism(List.of(Organ.LUNGS, Organ.SPLEEN, Organ.HEART))
            .movements(List.of(DrugMovement.ASCENDING, DrugMovement.OUTWARD))
            .primaryCategory(category)
            .contraindications(
                List.of(
                    "Ne pas utiliser en cas de chaleur plénitude",
                    "Incompatible avec Li Lu (Veratrum)"))
            .effects(
                List.of(
                    "Tonifie fortement le Yuan Qi",
                    "Renforce la Rate et les Poumons",
                    "Génère les Liquides et calme la soif"))
            .dosage("3-9g, jusqu'à 30g en cas d'urgence")
            .numberOfStars(5)
            .additionalNotes("Plante majeure — décoction séparée recommandée")
            .build();

    Long id = drugRepository.save(drug).getId();

    entityManager.flush();
    entityManager.clear();

    Drug loaded = drugRepository.findById(id).orElseThrow();

    assertThat(loaded.getChineseName()).isEqualTo("Ren Shen");
    assertThat(loaded.getAlternativeChineseNames()).containsExactlyInAnyOrder("人参", "Ye Shan Shen");
    assertThat(loaded.getLatinName()).isEqualTo("Radix Ginseng");
    assertThat(loaded.getFrenchName()).isEqualTo("Ginseng");
    assertThat(loaded.getNature()).isEqualTo(DrugNature.WARM);
    assertThat(loaded.getFlavors()).containsExactlyInAnyOrder(DrugFlavor.SWEET, DrugFlavor.BITTER);
    assertThat(loaded.getTropism())
        .containsExactlyInAnyOrder(Organ.LUNGS, Organ.SPLEEN, Organ.HEART);
    assertThat(loaded.getMovements())
        .containsExactlyInAnyOrder(DrugMovement.ASCENDING, DrugMovement.OUTWARD);
    assertThat(loaded.getPrimaryCategory().getId()).isEqualTo(category.getId());
    assertThat(loaded.getPrimaryCategory().getName()).isEqualTo("Plantes qui tonifient le Qi");
    assertThat(loaded.getContraindications())
        .containsExactlyInAnyOrder(
            "Ne pas utiliser en cas de chaleur plénitude", "Incompatible avec Li Lu (Veratrum)");
    assertThat(loaded.getEffects())
        .containsExactlyInAnyOrder(
            "Tonifie fortement le Yuan Qi",
            "Renforce la Rate et les Poumons",
            "Génère les Liquides et calme la soif");
    assertThat(loaded.getDosage()).isEqualTo("3-9g, jusqu'à 30g en cas d'urgence");
    assertThat(loaded.getNumberOfStars()).isEqualTo(5);
    assertThat(loaded.getAdditionalNotes())
        .isEqualTo("Plante majeure — décoction séparée recommandée");
  }

  @Test
  void should_persist_drug_association_with_effects() {
    DrugCategory category = new DrugCategory();
    category.setName("Catégorie test");
    drugCategoryRepository.save(category);

    Drug drugA =
        Drug.builder()
            .chineseName("Ren Shen")
            .nature(DrugNature.WARM)
            .flavors(List.of(DrugFlavor.SWEET))
            .tropism(List.of(Organ.SPLEEN))
            .movements(List.of(DrugMovement.ASCENDING))
            .primaryCategory(category)
            .build();

    Drug drugB =
        Drug.builder()
            .chineseName("Huang Qi")
            .nature(DrugNature.WARM)
            .flavors(List.of(DrugFlavor.SWEET))
            .tropism(List.of(Organ.LUNGS))
            .movements(List.of(DrugMovement.ASCENDING))
            .primaryCategory(category)
            .build();

    drugRepository.save(drugA);
    drugRepository.save(drugB);

    DrugAssociation association =
        DrugAssociation.builder()
            .drug(drugA)
            .associatedDrug(drugB)
            .effects(
                List.of(
                    "Synergie de tonification du Qi",
                    "Renforce l'action sur la Rate et les Poumons"))
            .build();
    entityManager.persist(association);

    entityManager.flush();
    entityManager.clear();

    Drug loadedA = drugRepository.findById(drugA.getId()).orElseThrow();

    assertThat(loadedA.getAssociationsAsOwner()).hasSize(1);
    DrugAssociation loadedAssoc = loadedA.getAssociationsAsOwner().get(0);
    assertThat(loadedAssoc.getAssociatedDrug().getChineseName()).isEqualTo("Huang Qi");
    assertThat(loadedAssoc.getEffects())
        .containsExactlyInAnyOrder(
            "Synergie de tonification du Qi", "Renforce l'action sur la Rate et les Poumons");
  }
}
