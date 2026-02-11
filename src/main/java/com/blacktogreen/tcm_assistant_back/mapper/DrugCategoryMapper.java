package com.blacktogreen.tcm_assistant_back.mapper;

import com.blacktogreen.tcm_assistant_back.dto.DrugCategoryDto;
import com.blacktogreen.tcm_assistant_back.model.Drug;
import com.blacktogreen.tcm_assistant_back.model.DrugCategory;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.ERROR)
public interface DrugCategoryMapper {

  DrugCategoryDto toDto(DrugCategory entity);

  @Mapping(target = "drugs", source = "drugsOfTheCategory")
  DrugCategory toEntity(DrugCategoryDto dto, List<Drug> drugsOfTheCategory);
}
