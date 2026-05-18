package com.blacktogreen.tcm_assistant_back.model;

import jakarta.persistence.*;
import java.util.ArrayList;
import java.util.List;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "drugs")
public class Drug {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Setter(AccessLevel.NONE)
  private Long id;

  @Column(nullable = false, unique = true)
  private String chineseName; // name in pinyin

  private String chineseCharacters;

  @ElementCollection
  @CollectionTable(name = "alternative_names", joinColumns = @JoinColumn(name = "drug_id"))
  @Column(name = "name")
  private List<String> alternativeChineseNames;

  private String latinName; // nom latin

  private String frenchName;

  @Enumerated(EnumType.STRING)
  private DrugNature nature;

  @ElementCollection
  @Enumerated(EnumType.STRING)
  @CollectionTable(name = "drug_flavors", joinColumns = @JoinColumn(name = "drug_id"))
  @Column(name = "flavor")
  private List<DrugFlavor> flavors;

  @ElementCollection
  @Enumerated(EnumType.STRING)
  @CollectionTable(name = "drug_tropism", joinColumns = @JoinColumn(name = "drug_id"))
  @Column(name = "tropism")
  private List<Organ> tropism;

  @ElementCollection
  @Enumerated(EnumType.STRING)
  @CollectionTable(name = "drug_movement", joinColumns = @JoinColumn(name = "drug_id"))
  @Column(name = "movements")
  private List<DrugMovement> movements;

  @ManyToOne
  @JoinColumn(name = "category_id")
  private DrugCategory primaryCategory;

  @ElementCollection
  @CollectionTable(name = "drug_contraindications", joinColumns = @JoinColumn(name = "drug_id"))
  @Column(name = "contraindication", length = 1000)
  private List<String> contraindications;

  @ElementCollection
  @CollectionTable(name = "drug_effects", joinColumns = @JoinColumn(name = "drug_id"))
  @Column(name = "effect", length = 1000)
  private List<String> effects;

  private String dosage;

  @OneToMany(mappedBy = "drug")
  private List<DrugAssociation> associationsAsOwner;

  @OneToMany(mappedBy = "associatedDrug")
  private List<DrugAssociation> associationsAsAssociated;

  private Integer numberOfStars; // 0–10, displayed as 0–5 stars with 0.5 steps

  @Column(name = "additionalNotes", length = 1000)
  private String additionalNotes;

  @Builder
  public Drug(
      String chineseName,
      String chineseCharacters,
      List<String> alternativeChineseNames,
      String latinName,
      String frenchName,
      DrugNature nature,
      List<DrugFlavor> flavors,
      List<Organ> tropism,
      List<DrugMovement> movements,
      DrugCategory primaryCategory,
      List<String> contraindications,
      List<String> effects,
      String dosage,
      Integer numberOfStars,
      List<DrugAssociation> associationsAsOwner,
      List<DrugAssociation> associationsAsAssociated,
      String additionalNotes) {
    this.chineseName = chineseName;
    this.chineseCharacters = chineseCharacters;
    this.alternativeChineseNames =
        alternativeChineseNames != null ? alternativeChineseNames : new ArrayList<>();
    this.latinName = latinName;
    this.frenchName = frenchName;
    this.nature = nature;
    this.flavors = flavors != null ? flavors : new ArrayList<>();
    this.tropism = tropism != null ? tropism : new ArrayList<>();
    this.movements = movements != null ? movements : new ArrayList<>();
    this.primaryCategory = primaryCategory;
    this.contraindications = contraindications != null ? contraindications : new ArrayList<>();
    this.effects = effects != null ? effects : new ArrayList<>();
    this.dosage = dosage;
    this.associationsAsOwner =
        associationsAsOwner != null ? associationsAsOwner : new ArrayList<>();
    this.associationsAsAssociated =
        associationsAsAssociated != null ? associationsAsAssociated : new ArrayList<>();
    this.numberOfStars = numberOfStars;
    this.additionalNotes = additionalNotes;
  }
}
