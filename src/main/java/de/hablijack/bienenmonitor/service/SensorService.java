package de.hablijack.bienenmonitor.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import de.hablijack.bienenmonitor.domain.Sensor;
import de.hablijack.bienenmonitor.form.SensorCreateForm;
import de.hablijack.bienenmonitor.repository.SensorRepository;

@Service
public class SensorService {

    private static final Logger LOGGER = LoggerFactory.getLogger(SensorService.class);

    private final SensorRepository sensorRepository;

    @Autowired
    public SensorService(SensorRepository sensorRepository) {
        this.sensorRepository = sensorRepository;
    }

    public Sensor getSensorById(long id) {
        LOGGER.debug("Getting Sensor={}", id);
        return sensorRepository.findOne(id);
    }

    public Sensor create(SensorCreateForm form) {
        Sensor sensor = new Sensor();
        sensor.setIconPath(form.getIconPath());
        sensor.setName(form.getName());
        sensor.setUnit(form.getUnit());
        return sensorRepository.save(sensor);
    }

    public Sensor update(SensorCreateForm form) {
        Sensor sensor = getSensorById(form.getId());
        form.setId(sensor.getId());
        form.setName(sensor.getName());
        form.setUnit(sensor.getUnit());
        form.setIconPath(sensor.getIconPath());
        return sensorRepository.save(sensor);
    }

    public List<Sensor> getAllSensors() {
        return sensorRepository.findAll();
    }
}
