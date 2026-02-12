package com.blacktogreen.tcm_assistant_back.service;

import com.blacktogreen.tcm_assistant_back.command.DrugCategoryCreationCmd;
import com.blacktogreen.tcm_assistant_back.command.DrugCategoryUpdateCmd;
import com.blacktogreen.tcm_assistant_back.controller.NotFoundException;
import com.blacktogreen.tcm_assistant_back.mapper.DrugCategoryMapper;
import com.blacktogreen.tcm_assistant_back.model.DrugCategory;
import com.blacktogreen.tcm_assistant_back.repository.DrugCategoryRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@AllArgsConstructor
public class DrugCategoryService {

  private final DrugCategoryRepository drugCategoryRepository;
  private final DrugCategoryMapper drugCategoryMapper;

  /**
   * Updates the values of the category that can be set by the user : name and description
   *
   * @param updateCmd
   * @return the updated {@link DrugCategory}
   */
  public Long updateCategory(long id, DrugCategoryUpdateCmd updateCmd) {
    DrugCategory toUpdate =
        drugCategoryRepository
            .findById(id)
            .orElseThrow(
                () ->
                    new NotFoundException(
                        String.format("Cannot find DrugCategory with id %d", id)));
    toUpdate.setName(updateCmd.name());
    toUpdate.setDescription(updateCmd.description());
    return saveCategory(toUpdate).getId();
  }

  /**
   * Creates a {@link DrugCategory}
   *
   * @param creationCmd
   * @return the created {@link DrugCategory}
   */
  public Long createCategory(DrugCategoryCreationCmd creationCmd) {
    DrugCategory categoryToCreate =
        DrugCategory.builder()
            .name(creationCmd.name())
            .description(creationCmd.description())
            .build();
    return saveCategory(categoryToCreate).getId();
  }

  private DrugCategory saveCategory(DrugCategory category) {
    return drugCategoryRepository.save(category);
  }

  public void deleteCategory(Long id) {
    drugCategoryRepository.deleteById(id);
  }
}
