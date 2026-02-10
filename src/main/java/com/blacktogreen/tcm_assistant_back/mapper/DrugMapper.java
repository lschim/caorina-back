package com.blacktogreen.tcm_assistant_back.mapper;

import com.blacktogreen.tcm_assistant_back.dto.*;
import com.blacktogreen.tcm_assistant_back.model.*;
import java.util.List;
import org.mapstruct.*;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.ERROR)
public interface DrugMapper {

  @Mapping(target = "name", source = "chineseName")
  @Mapping(target = "categoryId", source = "primaryCategory.id")
  DrugDto toDto(Drug entity);

  @Mapping(target = "chineseName", source = "dto.name")
  @Mapping(target = "primaryCategory", source = "category")
  @Mapping(target = "associationsAsOwner", source = "associationsAsOwner")
  @Mapping(target = "associationsAsAssociated", source = "associationsAsAssociated")
  Drug toEntity(
      DrugDto dto,
      DrugCategory category,
      List<DrugAssociation> associationsAsOwner,
      List<DrugAssociation> associationsAsAssociated);
}
