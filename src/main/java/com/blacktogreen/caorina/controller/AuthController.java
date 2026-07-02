package com.blacktogreen.caorina.controller;

import com.blacktogreen.caorina.command.LoginCmd;
import com.blacktogreen.caorina.dto.LoginResponse;
import com.blacktogreen.caorina.repository.AppUserRepository;
import com.blacktogreen.caorina.service.JwtService;
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
