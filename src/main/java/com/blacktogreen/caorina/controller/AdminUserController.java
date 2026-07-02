package com.blacktogreen.caorina.controller;

import com.blacktogreen.caorina.command.CreateUserCmd;
import com.blacktogreen.caorina.dto.AppUserDto;
import com.blacktogreen.caorina.service.AppUserService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/admin")
public class AdminUserController {

  private final AppUserService appUserService;

  public AdminUserController(AppUserService appUserService) {
    this.appUserService = appUserService;
  }

  @PostMapping("/users")
  @ResponseStatus(HttpStatus.CREATED)
  public AppUserDto createUser(@RequestBody CreateUserCmd cmd) {
    return appUserService.createUser(cmd);
  }
}
