package com.blacktogreen.caorina.command;

public record CreateUserCmd(String email, String password, String role) {}
