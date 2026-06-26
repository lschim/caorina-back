package com.blacktogreen.tcm_assistant_back.repository;

import com.blacktogreen.tcm_assistant_back.model.AppUser;
import java.util.Optional;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AppUserRepository extends JpaRepository<AppUser, UUID> {
  Optional<AppUser> findByEmail(String email);
}
