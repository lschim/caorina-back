package com.blacktogreen.tcm_assistant_back.dto;

import java.util.List;

public record DrugAssociationDto(
    Long associatedDrugId, String associatedDrugName, List<String> effects) {}
