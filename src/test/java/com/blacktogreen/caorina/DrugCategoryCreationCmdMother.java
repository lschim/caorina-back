package com.blacktogreen.caorina;

import com.blacktogreen.caorina.command.DrugCategoryCreationCmd;

public class DrugCategoryCreationCmdMother {

  public static DrugCategoryCreationCmd one() {
    return new DrugCategoryCreationCmd(
        "default drug category", "default description for drug category");
  }
}
