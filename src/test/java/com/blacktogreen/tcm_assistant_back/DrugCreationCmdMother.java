package com.blacktogreen.tcm_assistant_back;

import com.blacktogreen.tcm_assistant_back.command.DrugCreationCmd;
import com.blacktogreen.tcm_assistant_back.model.DrugMovement;
import com.blacktogreen.tcm_assistant_back.model.DrugNature;
import com.blacktogreen.tcm_assistant_back.model.Organ;
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
