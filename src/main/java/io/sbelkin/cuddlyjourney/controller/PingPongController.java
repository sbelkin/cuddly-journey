package io.sbelkin.cuddlyjourney.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Just a basic ping/pong controller
 */
@RestController
public class PingPongController {

  @GetMapping("/ping")
  public ResponseEntity ping() {
    return ResponseEntity.ok("pong");
  }

}
