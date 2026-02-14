package com.blacktogreen.tcm_assistant_back;

import com.blacktogreen.tcm_assistant_back.command.DrugCategoryCreationCmd;

public class DrugCategoryCreationCmdMother {

  public static DrugCategoryCreationCmd one() {
    return new DrugCategoryCreationCmd(
        "default drug category", "default description for drug category");
  }
}
