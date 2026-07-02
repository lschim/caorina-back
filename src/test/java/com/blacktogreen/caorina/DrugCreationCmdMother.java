package com.blacktogreen.caorina;

import com.blacktogreen.caorina.command.DrugCreationCmd;
import com.blacktogreen.caorina.model.DrugMovement;
import com.blacktogreen.caorina.model.DrugNature;
import com.blacktogreen.caorina.model.Organ;
import java.util.List;

public class DrugCreationCmdMother {

  public static DrugCreationCmd oneWithCategoryId(Long categoryId) {
    return DrugCreationCmd.builder()
        .chineseName("Ren Shen")
        .frenchName("Ginseng")
        .nature(DrugNature.WARM)
        .tropism(List.of(Organ.LIVER))
        .primaryCategoryId(categoryId)
        .numberOfStars(5)
        .movements(List.of(DrugMovement.ASCENDING))
        .build();
  }
}
