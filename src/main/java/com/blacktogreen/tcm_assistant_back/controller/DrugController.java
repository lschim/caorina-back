package com.blacktogreen.tcm_assistant_back.controller;

import com.blacktogreen.tcm_assistant_back.command.DrugCreationCmd;
import com.blacktogreen.tcm_assistant_back.dto.DrugDto;
import com.blacktogreen.tcm_assistant_back.model.*;
import com.blacktogreen.tcm_assistant_back.service.DrugQueryService;
import com.blacktogreen.tcm_assistant_back.service.DrugService;
import jakarta.persistence.*;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/drugs")
@AllArgsConstructor
public class DrugController {

  private final DrugService drugService;
  private final DrugQueryService drugQueryService;

  @GetMapping
  public List<DrugDto> getAllDrugs() {
    return drugQueryService.getAll();
  }

  @GetMapping("/{id}")
  public DrugDto getDrugById(@PathVariable Long id) {
    return drugQueryService.getById(id);
  }

  /**
   * 404 if the drugCategory does not exist
   *
   * @param drugCreationCmd
   * @return
   */
  @PostMapping
  public Long createDrug(@RequestBody DrugCreationCmd drugCreationCmd) {
    return drugService.create(drugCreationCmd);
  }

  @DeleteMapping("/{id}")
  public void deleteDrug(@PathVariable Long id) {
    drugService.delete(id);
  }
}
