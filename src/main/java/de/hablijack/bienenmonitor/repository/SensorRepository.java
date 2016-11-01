package de.hablijack.bienenmonitor.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import de.hablijack.bienenmonitor.domain.Sensor;

public interface SensorRepository extends JpaRepository<Sensor, Long> {

    Optional<Sensor> findOneByName(String name);

}
