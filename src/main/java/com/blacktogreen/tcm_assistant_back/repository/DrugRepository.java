package com.blacktogreen.tcm_assistant_back.repository;

import com.blacktogreen.tcm_assistant_back.model.Drug;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface DrugRepository extends JpaRepository<Drug, Long> {

  Optional<Drug> findByChineseName(String chineseName);

  boolean existsByChineseName(String chineseName);

  @Query(
      """
      SELECT DISTINCT d FROM Drug d LEFT JOIN d.alternativeChineseNames a
      WHERE LOWER(d.chineseName) LIKE LOWER(CONCAT('%', :q, '%'))
         OR LOWER(a)             LIKE LOWER(CONCAT('%', :q, '%'))
      ORDER BY d.numberOfStars DESC NULLS LAST
      """)
  List<Drug> search(@Param("q") String query);
}
