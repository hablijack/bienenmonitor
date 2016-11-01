package de.hablijack.bienenmonitor.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import de.hablijack.bienenmonitor.domain.Hive;
import de.hablijack.bienenmonitor.form.HiveCreateForm;
import de.hablijack.bienenmonitor.repository.HiveRepository;

@Service
public class HiveService {

    private static final Logger LOGGER = LoggerFactory.getLogger(HiveService.class);

    private final HiveRepository hiveRepository;

    @Autowired
    public HiveService(HiveRepository hiveRepository) {
        this.hiveRepository = hiveRepository;
    }

    public Hive getHiveById(long id) {
        LOGGER.debug("Getting Hive={}", id);
        return hiveRepository.findOne(id);
    }

    public Hive create(HiveCreateForm form) {
        Hive hive = new Hive();
        hive.setAssemblyDate(form.getAssemblyDate());
        hive.setCombCount(form.getCombCount());
        hive.setName(form.getName());
        hive.setPosition(form.getPosition());
        hive.setType(form.getType());
        hive.setColor(form.getColor());
        hive.setCombPerBox(form.getCombPerBox());
        return hiveRepository.save(hive);
    }

    public Hive update(HiveCreateForm form) {
        Hive hive = getHiveById(form.getId());
        hive.setAssemblyDate(form.getAssemblyDate());
        hive.setCombCount(form.getCombCount());
        hive.setName(form.getName());
        hive.setPosition(form.getPosition());
        hive.setType(form.getType());
        hive.setColor(form.getColor());
        hive.setCombPerBox(form.getCombPerBox());
        return hiveRepository.save(hive);
    }

    public List<Hive> getAllHives() {
        return hiveRepository.findAll();
    }
}
