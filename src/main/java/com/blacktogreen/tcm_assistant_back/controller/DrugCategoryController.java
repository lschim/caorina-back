package com.blacktogreen.tcm_assistant_back.controller;

import com.blacktogreen.tcm_assistant_back.command.DrugCategoryCreationCmd;
import com.blacktogreen.tcm_assistant_back.command.DrugCategoryUpdateCmd;
import com.blacktogreen.tcm_assistant_back.dto.DrugCategoryDto;
import com.blacktogreen.tcm_assistant_back.mapper.DrugCategoryMapper;
import com.blacktogreen.tcm_assistant_back.service.DrugCategoryQueryService;
import com.blacktogreen.tcm_assistant_back.service.DrugCategoryService;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/drug-categories")
@AllArgsConstructor
public class DrugCategoryController {

  private final DrugCategoryService drugCategoryService;
  private final DrugCategoryQueryService drugCategoryQueryService;
  private final DrugCategoryMapper drugCategoryMapper;

  @GetMapping
  public List<DrugCategoryDto> getAllCategories() {
    return drugCategoryQueryService.getAllCategories();
  }

  @GetMapping("/{id}")
  public DrugCategoryDto getCategoryById(@PathVariable Long id) {
    return drugCategoryQueryService.getCategoryById(id);
  }

  @PostMapping
  public Long createCategory(@RequestBody DrugCategoryCreationCmd createCmd) {
    return drugCategoryService.createCategory(createCmd);
  }

  @PutMapping("/{id}")
  public Long updateCategory(@PathVariable Long id, @RequestBody DrugCategoryUpdateCmd updateCmd) {
    return drugCategoryService.updateCategory(id, updateCmd);
  }

  @DeleteMapping("/{id}")
  public void deleteCategory(@PathVariable Long id) {
    drugCategoryService.deleteCategory(id);
  }
}
