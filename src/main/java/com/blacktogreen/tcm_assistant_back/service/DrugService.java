package com.blacktogreen.tcm_assistant_back.service;

import com.blacktogreen.tcm_assistant_back.command.DrugCreationCmd;
import com.blacktogreen.tcm_assistant_back.controller.NotFoundException;
import com.blacktogreen.tcm_assistant_back.model.Drug;
import com.blacktogreen.tcm_assistant_back.model.DrugCategory;
import com.blacktogreen.tcm_assistant_back.repository.DrugCategoryRepository;
import com.blacktogreen.tcm_assistant_back.repository.DrugRepository;
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
  private final DrugCategoryRepository drugCategoryRepository;

  public Long create(Drug drug) {
    log.info("Creating drug with chineseName={}", drug.getChineseName());

    if (drugRepository.existsByChineseName(drug.getChineseName())) {
      throw new IllegalArgumentException(
          "Drug with chineseName '%s' already exists".formatted(drug.getChineseName()));
    }

    return drugRepository.save(drug).getId();
  }

  public Long create(DrugCreationCmd drugCreationCmd) {
    Drug drug = drugCreationCmd.toPartiallyFilledDrug();
    if (drugCreationCmd.primaryCategoryId() != null) {
      DrugCategory category =
          drugCategoryRepository
              .findById(drugCreationCmd.primaryCategoryId())
              .orElseThrow(
                  () ->
                      new NotFoundException(
                          String.format(
                              "DrugCategory with id %d does not exist",
                              drugCreationCmd.primaryCategoryId())));
      drug.setPrimaryCategory(category);
    }
    return this.create(drug);
  }

  /**
   * Updates the fields that can be modified by the user of the drug with {@param id}
   *
   * @param id
   * @param updatedDrug
   * @return the updated {@link Drug}
   */
  public Drug update(Long id, Drug updatedDrug) {
    log.info("Updating drug id={}", id);

    Drug existing =
        drugRepository
            .findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Drug not found : " + id));

    // Fields that can be set by the user
    existing.setChineseName(updatedDrug.getChineseName());
    existing.setChineseCharacters(updatedDrug.getChineseCharacters());
    existing.setAlternativeChineseNames(updatedDrug.getAlternativeChineseNames());
    existing.setLatinName(updatedDrug.getLatinName());
    existing.setFrenchName(updatedDrug.getFrenchName());
    existing.setNature(updatedDrug.getNature());
    existing.setFlavors(updatedDrug.getFlavors());
    existing.setTropism(updatedDrug.getTropism());
    existing.setMovements(updatedDrug.getMovements());
    existing.setPrimaryCategory(updatedDrug.getPrimaryCategory());
    existing.setContraindications(updatedDrug.getContraindications());
    existing.setEffects(updatedDrug.getEffects());
    existing.setDosage(updatedDrug.getDosage());
    existing.setAdditionalNotes(updatedDrug.getAdditionalNotes());
    existing.setNumberOfStars(updatedDrug.getNumberOfStars());

    return drugRepository.save(existing);
  }

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

  public void delete(Long id) {
    log.info("Deleting drug id={}", id);

    if (!drugRepository.existsById(id)) {
      throw new IllegalArgumentException("Drug not found: " + id);
    }

    drugRepository.deleteById(id);
  }
}
