package com.blacktogreen.caorina.mapper;

import com.blacktogreen.caorina.dto.DrugCategoryDto;
import com.blacktogreen.caorina.model.Drug;
import com.blacktogreen.caorina.model.DrugCategory;
import java.util.List;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.ERROR)
public interface DrugCategoryMapper {

  DrugCategoryDto toDto(DrugCategory entity);

  @Mapping(target = "drugs", source = "drugsOfTheCategory")
  DrugCategory toEntity(DrugCategoryDto dto, List<Drug> drugsOfTheCategory);
}
