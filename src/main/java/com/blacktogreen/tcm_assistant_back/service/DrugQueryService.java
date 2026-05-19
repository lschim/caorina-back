package com.blacktogreen.tcm_assistant_back.service;

import com.blacktogreen.tcm_assistant_back.controller.NotFoundException;
import com.blacktogreen.tcm_assistant_back.dto.DrugDetailDto;
import com.blacktogreen.tcm_assistant_back.dto.DrugDto;
import com.blacktogreen.tcm_assistant_back.mapper.DrugMapper;
import com.blacktogreen.tcm_assistant_back.repository.DrugRepository;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class DrugQueryService {

  private final DrugRepository drugRepository;
  private final DrugMapper drugMapper;

  @Transactional(readOnly = true)
  public DrugDetailDto getById(Long id) {
    return drugRepository
        .findById(id)
        .map(drugMapper::toDetailDto)
        .orElseThrow(() -> new NotFoundException("Drug not found: " + id));
  }

  @Transactional(readOnly = true)
  public List<DrugDto> getAll() {
    return drugRepository.findAll().stream().map(drugMapper::toDto).toList();
  }

  @Transactional(readOnly = true)
  public List<DrugDto> search(String query) {
    return drugRepository.search(query).stream().map(drugMapper::toDto).toList();
  }
}
