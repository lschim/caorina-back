package com.blacktogreen.tcm_assistant_back.mapper;

import com.blacktogreen.tcm_assistant_back.dto.*;
import com.blacktogreen.tcm_assistant_back.model.*;
import java.util.List;
import org.springframework.stereotype.Component;

@Component
public class DrugMapper {
  public DrugDto toDto(Drug entity) {
    return new DrugDto(
        entity.getId(),
        entity.getChineseName(),
        entity.getLatinName(),
        entity.getFrenchName(),
        entity.getAlternativeChineseNames(),
        DrugNatureDto.valueOf(entity.getNature().name()),
        entity.getFlavors().stream().map(f -> DrugFlavorDto.valueOf(f.name())).toList(),
        entity.getMovements().stream().map(m -> DrugMovementDto.valueOf(m.name())).toList(),
        entity.getTropism().stream().map(o -> OrganDto.valueOf(o.name())).toList(),
        entity.getContraindications(),
        entity.getEffects(),
        entity.getDosage(),
        entity.getNumberOfStars(),
        entity.getPrimaryCategory().getId(),
        entity.getAdditionalNotes());
  }

  public Drug toEntity(
      DrugDto dto,
      DrugCategory category,
      List<DrugAssociation> associationsAsOwner,
      List<DrugAssociation> associationsAsAssociated) {
    return new Drug(
        dto.name(),
        dto.alternativeChineseNames(),
        dto.latinName(),
        dto.frenchName(),
        DrugNature.valueOf(dto.nature().name()),
        dto.flavors().stream().map(f -> DrugFlavor.valueOf(f.name())).toList(),
        dto.tropism().stream().map(o -> Organ.valueOf(o.name())).toList(),
        dto.movements().stream().map(m -> DrugMovement.valueOf(m.name())).toList(),
        category,
        dto.contraindications(),
        dto.effects(),
        dto.dosage(),
        dto.numberOfStars(),
        associationsAsOwner,
        associationsAsAssociated,
        dto.additionalNotes());
  }
}
