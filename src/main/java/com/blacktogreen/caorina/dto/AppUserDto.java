package com.blacktogreen.caorina.dto;

import java.time.LocalDateTime;
import java.util.UUID;

public record AppUserDto(UUID id, String email, String role, LocalDateTime createdAt) {}
