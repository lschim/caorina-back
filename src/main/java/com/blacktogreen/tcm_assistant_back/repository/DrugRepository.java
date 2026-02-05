package com.blacktogreen.tcm_assistant_back.repository;

import com.blacktogreen.tcm_assistant_back.model.Drug;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DrugRepository extends JpaRepository<Drug, Long> {

  Optional<Drug> findByChineseName(String chineseName);

  boolean existsByChineseName(String chineseName);
}
