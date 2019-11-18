package io.sbelkin.cuddlyjourney.repository;

import io.sbelkin.cuddlyjourney.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

}
