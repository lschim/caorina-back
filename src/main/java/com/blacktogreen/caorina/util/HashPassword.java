package com.blacktogreen.caorina.util;

import org.springframework.security.crypto.argon2.Argon2PasswordEncoder;

public class HashPassword {

  public static void main(String[] args) {
    if (args.length == 0) {
      System.err.println("Usage: HashPassword <password>");
      System.exit(1);
    }
    var encoder = Argon2PasswordEncoder.defaultsForSpringSecurity_v5_8();
    System.out.println(encoder.encode(args[0]));
  }
}
