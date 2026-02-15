package com.blacktogreen.tcm_assistant_back.dto;


import java.util.List;

public record DrugsByCategoryDto(DrugCategoryDto category, List<DrugDto> drugs) {}
