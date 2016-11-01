package de.hablijack.bienenmonitor.repository;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

import de.hablijack.bienenmonitor.domain.Hive;

public interface HiveRepository extends JpaRepository<Hive, Long> {

    Optional<Hive> findOneByName(String name);

}
