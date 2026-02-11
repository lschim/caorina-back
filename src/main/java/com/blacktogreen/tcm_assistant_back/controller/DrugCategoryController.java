package com.blacktogreen.tcm_assistant_back.controller;

import com.blacktogreen.tcm_assistant_back.dto.DrugCategoryDto;
import com.blacktogreen.tcm_assistant_back.mapper.DrugCategoryMapper;
import com.blacktogreen.tcm_assistant_back.model.DrugCategory;
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
  public DrugCategoryDto createCategory(@RequestBody CreateDrugCategoryDto createDrugCategoryDto) {
    return drugCategoryMapper.toDto(
        drugCategoryService.createCategory(createDrugCategoryDto.toEntity()));
  }

  @PutMapping("/{id}")
  public DrugCategoryDto updateCategory(
      @PathVariable Long id, @RequestBody DrugCategoryDto category) {
    return drugCategoryMapper.toDto(
        drugCategoryService.updateCategoryUserInfos(
            id, drugCategoryMapper.toEntity(category, null)));
  }

  @DeleteMapping("/{id}")
  public void deleteCategory(@PathVariable Long id) {
    drugCategoryService.deleteCategory(id);
  }

  public record CreateDrugCategoryDto(String name, String description) {
    DrugCategory toEntity() {
      return new DrugCategory(name, description, null);
    }
  }
}
