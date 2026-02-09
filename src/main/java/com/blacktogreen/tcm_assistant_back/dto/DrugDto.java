package com.blacktogreen.tcm_assistant_back.dto;

import java.util.List;

public record DrugDto(
    Long id,
    String name,
    String latinName,
    String frenchName,
    List<String> alternativeChineseNames,
    DrugNatureDto nature,
    List<DrugFlavorDto> flavors,
    List<DrugMovementDto> movements,
    List<OrganDto> tropism,
    List<String> contraindications,
    List<String> effects,
    String dosage,
    Integer numberOfStars,
    Long categoryId,
    String additionalNotes) {}
