package com.blacktogreen.tcm_assistant_back.command;

import com.blacktogreen.tcm_assistant_back.model.*;
import java.util.List;

public record DrugCreationCmd(
    String chineseName,
    String chineseCharacters,
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

  public static Builder builder() {
    return new Builder();
  }

  /**
   * @return a Drug object, without the relations that need to be injected (like the Primary
   *     category) because they require access to the DB through the service to retrieve Entities
   *     based on their ID.
   */
  public Drug toPartiallyFilledDrug() {
    return Drug.builder()
        .chineseName(chineseName)
        .chineseCharacters(chineseCharacters)
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

  public static class Builder {
    private String chineseName;
    private String chineseCharacters;
    private List<String> alternativeChineseNames = List.of();
    private String latinName;
    private String frenchName;
    private DrugNature nature;
    private List<DrugFlavor> flavors = List.of();
    private List<Organ> tropism = List.of();
    private List<DrugMovement> movements = List.of();
    private Long primaryCategoryId;
    private List<String> contraindications = List.of();
    private List<String> effects = List.of();
    private String dosage;
    private Integer numberOfStars = 0;
    private String additionalNotes;

    public Builder chineseName(String chineseName) {
      this.chineseName = chineseName;
      return this;
    }

    public Builder chineseCharacters(String chineseCharacters) {
      this.chineseCharacters = chineseCharacters;
      return this;
    }

    public Builder alternativeChineseNames(List<String> names) {
      this.alternativeChineseNames = names;
      return this;
    }

    public Builder latinName(String latinName) {
      this.latinName = latinName;
      return this;
    }

    public Builder frenchName(String frenchName) {
      this.frenchName = frenchName;
      return this;
    }

    public Builder nature(DrugNature nature) {
      this.nature = nature;
      return this;
    }

    public Builder flavors(List<DrugFlavor> flavors) {
      this.flavors = flavors;
      return this;
    }

    public Builder tropism(List<Organ> tropism) {
      this.tropism = tropism;
      return this;
    }

    public Builder movements(List<DrugMovement> movements) {
      this.movements = movements;
      return this;
    }

    public Builder primaryCategoryId(Long id) {
      this.primaryCategoryId = id;
      return this;
    }

    public Builder contraindications(List<String> contraindications) {
      this.contraindications = contraindications;
      return this;
    }

    public Builder effects(List<String> effects) {
      this.effects = effects;
      return this;
    }

    public Builder dosage(String dosage) {
      this.dosage = dosage;
      return this;
    }

    public Builder numberOfStars(Integer stars) {
      this.numberOfStars = stars;
      return this;
    }

    public Builder additionalNotes(String notes) {
      this.additionalNotes = notes;
      return this;
    }

    public DrugCreationCmd build() {
      return new DrugCreationCmd(
          chineseName,
          chineseCharacters,
          alternativeChineseNames,
          latinName,
          frenchName,
          nature,
          flavors,
          tropism,
          movements,
          primaryCategoryId,
          contraindications,
          effects,
          dosage,
          numberOfStars,
          additionalNotes);
    }
  }
}
