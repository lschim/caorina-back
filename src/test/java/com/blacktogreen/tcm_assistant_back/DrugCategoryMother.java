package com.blacktogreen.tcm_assistant_back;

import com.blacktogreen.tcm_assistant_back.model.DrugCategory;

public class DrugCategoryMother {

  public static DrugCategory oneWithoutDrug() {
    DrugCategory cat = new DrugCategory();
    cat.setName("Default Category");
    cat.setDescription("Default description");
    return cat;
  }

  public static DrugCategory withNameWithoutDrug(String name) {
    DrugCategory cat = new DrugCategory();
    cat.setName(name);
    return cat;
  }
}
