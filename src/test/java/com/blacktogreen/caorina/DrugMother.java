package com.blacktogreen.caorina;

import com.blacktogreen.caorina.model.Drug;
import com.blacktogreen.caorina.model.DrugMovement;
import com.blacktogreen.caorina.model.DrugNature;
import com.blacktogreen.caorina.model.Organ;
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
