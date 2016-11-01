package de.hablijack.bienenmonitor.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import de.hablijack.bienenmonitor.domain.BienenmonitorUser;

public interface UserRepository extends JpaRepository<BienenmonitorUser, Long> {

    Optional<BienenmonitorUser> findOneByEmail(String email);
}
