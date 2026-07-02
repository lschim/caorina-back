package com.blacktogreen.caorina.service;

import com.blacktogreen.caorina.command.CreateUserCmd;
import com.blacktogreen.caorina.dto.AppUserDto;
import com.blacktogreen.caorina.model.AppUser;
import com.blacktogreen.caorina.model.AppUserRole;
import com.blacktogreen.caorina.repository.AppUserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AppUserService {

  private final AppUserRepository userRepository;
  private final PasswordEncoder passwordEncoder;

  public AppUserService(AppUserRepository userRepository, PasswordEncoder passwordEncoder) {
    this.userRepository = userRepository;
    this.passwordEncoder = passwordEncoder;
  }

  public AppUserDto createUser(CreateUserCmd cmd) {
    AppUser user =
        new AppUser(
            cmd.email(), passwordEncoder.encode(cmd.password()), AppUserRole.valueOf(cmd.role()));
    AppUser saved = userRepository.save(user);
    return new AppUserDto(
        saved.getId(), saved.getEmail(), saved.getRole().name(), saved.getCreatedAt());
  }
}
