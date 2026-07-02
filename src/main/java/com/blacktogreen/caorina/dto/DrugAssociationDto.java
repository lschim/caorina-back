package com.blacktogreen.caorina.dto;

import java.util.List;

public record DrugAssociationDto(
    Long associatedDrugId, String associatedDrugName, List<String> effects) {}
