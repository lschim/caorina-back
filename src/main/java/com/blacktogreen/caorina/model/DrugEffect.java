package com.blacktogreen.caorina.model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Embeddable
public class DrugEffect {

  @Column(name = "effect", length = 1000)
  private String text;

  @Column(name = "is_yao_yao", nullable = false)
  private boolean yaoYao;
}
