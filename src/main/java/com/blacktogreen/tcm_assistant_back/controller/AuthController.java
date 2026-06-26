package com.blacktogreen.tcm_assistant_back.controller;

import com.blacktogreen.tcm_assistant_back.command.LoginCmd;
import com.blacktogreen.tcm_assistant_back.dto.LoginResponse;
import com.blacktogreen.tcm_assistant_back.repository.AppUserRepository;
import com.blacktogreen.tcm_assistant_back.service.JwtService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth")
public class AuthController {

  private final AppUserRepository userRepository;
  private final PasswordEncoder passwordEncoder;
  private final JwtService jwtService;

  public AuthController(
      AppUserRepository userRepository, PasswordEncoder passwordEncoder, JwtService jwtService) {
    this.userRepository = userRepository;
    this.passwordEncoder = passwordEncoder;
    this.jwtService = jwtService;
  }

  @PostMapping("/login")
  public ResponseEntity<LoginResponse> login(@RequestBody LoginCmd cmd) {
    return userRepository
        .findByEmail(cmd.email())
        .filter(user -> passwordEncoder.matches(cmd.password(), user.getPasswordHash()))
        .map(
            user ->
                ResponseEntity.ok(
                    new LoginResponse(jwtService.generateToken(user), user.getRole().name())))
        .orElse(ResponseEntity.status(401).build());
  }
}
