package com.blacktogreen.caorina.controller;

import com.blacktogreen.caorina.command.UpdateStarsCmd;
import com.blacktogreen.caorina.dto.DrugDetailDto;
import com.blacktogreen.caorina.dto.DrugDto;
import com.blacktogreen.caorina.service.DrugQueryService;
import com.blacktogreen.caorina.service.DrugService;
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
  public List<DrugDto> getAllDrugs(@RequestParam(required = false) String search) {
    if (search != null && !search.isBlank()) {
      return drugQueryService.search(search);
    }
    return drugQueryService.getAll();
  }

  @GetMapping("/{id}")
  public DrugDetailDto getDrugById(@PathVariable Long id) {
    return drugQueryService.getById(id);
  }

  @PatchMapping("/{id}/stars")
  public void updateStars(@PathVariable Long id, @RequestBody UpdateStarsCmd cmd) {
    drugService.updateStars(id, cmd.stars());
  }
}
