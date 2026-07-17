package com.blacktogreen.caorina.mapper;

import com.blacktogreen.caorina.dto.*;
import com.blacktogreen.caorina.model.*;
import java.util.List;
import org.mapstruct.*;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.ERROR)
public interface DrugMapper {

  // TODO(Task 2): remplacé par toEffectDto/toEffectEntity une fois DrugDto/DrugDetailDto/
  // DrugAssociationDto migrés vers List<DrugEffectDto> — shim temporaire pour garder le module
  // compilable entre Task 1 (Drug.effects: List<DrugEffect>) et Task 2.
  default String mapEffectToText(DrugEffect effect) {
    return effect.getText();
  }

  default DrugEffect mapTextToEffect(String text) {
    return DrugEffect.builder().text(text).build();
  }

  @Mapping(target = "name", source = "chineseName")
  @Mapping(target = "categoryId", source = "primaryCategory.id")
  DrugDto toDto(Drug entity);

  @Mapping(target = "name", source = "chineseName")
  @Mapping(target = "categoryId", source = "primaryCategory.id")
  @Mapping(target = "associations", source = "associationsAsOwner")
  DrugDetailDto toDetailDto(Drug entity);

  @Mapping(target = "associatedDrugId", source = "associatedDrug.id")
  @Mapping(target = "associatedDrugName", source = "associatedDrug.chineseName")
  DrugAssociationDto toAssociationDto(DrugAssociation entity);

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
