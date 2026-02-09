package com.blacktogreen.tcm_assistant_back.command;

import com.blacktogreen.tcm_assistant_back.model.*;
import java.util.List;

public record DrugCreationCmd(
    String chineseName,
    List<String> alternativeChineseNames,
    String latinName,
    String frenchName,
    DrugNature nature,
    List<DrugFlavor> flavors,
    List<Organ> tropism,
    List<DrugMovement> movements,
    Long primaryCategoryId,
    List<String> contraindications,
    List<String> effects,
    String dosage,
    Integer numberOfStars,
    String additionalNotes) {

  /**
   * @return a Drug object, without the relations that need to be injected (like the Primary
   *     category) because they require access to the DB through the service to retrieve Entities
   *     based on their ID.
   */
  public Drug toPartiallyFilledDrug() {
    return Drug.builder()
        .chineseName(chineseName)
        .alternativeChineseNames(alternativeChineseNames)
        .latinName(latinName)
        .frenchName(frenchName)
        .nature(nature)
        .flavors(flavors)
        .tropism(tropism)
        .movements(movements)
        .contraindications(contraindications)
        .effects(effects)
        .dosage(dosage)
        .numberOfStars(numberOfStars)
        .additionalNotes(additionalNotes)
        .build();
  }
}
