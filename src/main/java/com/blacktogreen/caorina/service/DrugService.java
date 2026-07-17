package com.blacktogreen.caorina.service;

import com.blacktogreen.caorina.controller.NotFoundException;
import com.blacktogreen.caorina.model.Drug;
import com.blacktogreen.caorina.repository.DrugRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional
public class DrugService {

  private final DrugRepository drugRepository;

  public void updateStars(Long id, Integer stars) {
    if (stars == null || stars < 0 || stars > 10) {
      throw new IllegalArgumentException("stars must be between 0 and 10");
    }
    Drug drug =
        drugRepository
            .findById(id)
            .orElseThrow(() -> new NotFoundException("Drug not found: " + id));
    drug.setNumberOfStars(stars);
    drugRepository.save(drug);
  }
}
