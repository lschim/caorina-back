package com.blacktogreen.caorina;

import com.blacktogreen.caorina.model.DrugCategory;

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
