package com.blacktogreen.tcm_assistant_back.service;

import com.blacktogreen.tcm_assistant_back.controller.NotFoundException;
import com.blacktogreen.tcm_assistant_back.dto.DrugCategoryDto;
import com.blacktogreen.tcm_assistant_back.dto.DrugsByCategoryDto;
import com.blacktogreen.tcm_assistant_back.mapper.DrugCategoryMapper;
import com.blacktogreen.tcm_assistant_back.mapper.DrugMapper;
import com.blacktogreen.tcm_assistant_back.model.DrugCategory;
import com.blacktogreen.tcm_assistant_back.repository.DrugCategoryRepository;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@AllArgsConstructor
@Transactional(readOnly = true)
public class DrugCategoryQueryService {

  private final DrugCategoryRepository drugCategoryRepository;
  private final DrugCategoryMapper drugCategoryMapper;
  private final DrugMapper drugMapper;

  public List<DrugCategoryDto> getAllCategories() {
    return drugCategoryRepository.findAll().stream().map(drugCategoryMapper::toDto).toList();
  }

  public DrugCategoryDto getCategoryById(Long id) {
    return drugCategoryRepository
        .findById(id)
        .map(drugCategoryMapper::toDto)
        .orElseThrow(() -> new NotFoundException("Drug Category with id " + id + " not found."));
  }

  public DrugsByCategoryDto getDrugsByCategory(Long id) {
    if (id == null) throw new IllegalArgumentException();
    DrugCategory category =
        drugCategoryRepository
            .findById(id)
            .orElseThrow(
                () -> new NotFoundException("Drug Category with id " + id + " not found."));
    return new DrugsByCategoryDto(
        drugCategoryMapper.toDto(category),
        category.getDrugs().stream().map(drugMapper::toDto).toList());
  }
}
