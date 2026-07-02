package com.blacktogreen.caorina.dto;

import java.util.List;

public record DrugsByCategoryDto(DrugCategoryDto category, List<DrugDto> drugs) {}
