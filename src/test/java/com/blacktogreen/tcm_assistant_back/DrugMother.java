package com.blacktogreen.tcm_assistant_back;

import com.blacktogreen.tcm_assistant_back.model.Drug;
import com.blacktogreen.tcm_assistant_back.model.DrugMovement;
import com.blacktogreen.tcm_assistant_back.model.DrugNature;
import com.blacktogreen.tcm_assistant_back.model.Organ;
import java.util.List;

public class DrugMother {
  public static Drug oneWithoutCategory() {
    return Drug.builder()
        .chineseName("Ren Shen")
        .frenchName("Ginseng")
        .nature(DrugNature.WARM)
        .tropism(List.of(Organ.LIVER))
        .numberOfStars(5)
        .movements(List.of(DrugMovement.ASCENDING))
        .build();
  }
}
