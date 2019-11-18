package io.sbelkin.cuddlyjourney;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

// TODO: Enable when working with the database rolling forward/backwards
//@EntityScan("io.sbelkin.cuddlyjourney.entity")
//@EnableJpaRepositories("io.sbelkin.cuddlyjourney.repository")
@SpringBootApplication
public class CuddlyJourneyApplication {

  public static void main(String[] args) {
    SpringApplication.run(CuddlyJourneyApplication.class, args);
  }
}
