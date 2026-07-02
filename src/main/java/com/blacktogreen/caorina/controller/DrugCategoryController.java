package com.blacktogreen.caorina.controller;

import com.blacktogreen.caorina.command.DrugCategoryCreationCmd;
import com.blacktogreen.caorina.command.DrugCategoryUpdateCmd;
import com.blacktogreen.caorina.dto.DrugCategoryDto;
import com.blacktogreen.caorina.dto.DrugsByCategoryDto;
import com.blacktogreen.caorina.dto.IDDto;
import com.blacktogreen.caorina.mapper.DrugCategoryMapper;
import com.blacktogreen.caorina.service.DrugCategoryQueryService;
import com.blacktogreen.caorina.service.DrugCategoryService;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
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

  @GetMapping("/{id}/drugs")
  public DrugsByCategoryDto getDrugsByCategory(@PathVariable Long id) {
    return drugCategoryQueryService.getDrugsByCategory(id);
  }

  @PostMapping
  @ResponseStatus(value = HttpStatus.CREATED)
  public IDDto createCategory(@RequestBody DrugCategoryCreationCmd createCmd) {
    return new IDDto(drugCategoryService.createCategory(createCmd));
  }

  @PutMapping("/{id}")
  public IDDto updateCategory(@PathVariable Long id, @RequestBody DrugCategoryUpdateCmd updateCmd) {
    return new IDDto(drugCategoryService.updateCategory(id, updateCmd));
  }

  @DeleteMapping("/{id}")
  public void deleteCategory(@PathVariable Long id) {
    drugCategoryService.deleteCategory(id);
  }
}
