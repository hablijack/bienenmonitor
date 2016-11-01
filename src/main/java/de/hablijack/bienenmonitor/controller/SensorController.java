package de.hablijack.bienenmonitor.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.hablijack.bienenmonitor.controller.util.ModelKeys;
import de.hablijack.bienenmonitor.domain.Sensor;
import de.hablijack.bienenmonitor.domain.validator.SensorCreateFormValidator;
import de.hablijack.bienenmonitor.form.SensorCreateForm;
import de.hablijack.bienenmonitor.service.SensorService;

@Controller
public class SensorController {

    private static final Logger LOGGER = LoggerFactory.getLogger(SensorController.class);
    @Autowired
    private SensorService sensorService;
    @Autowired
    private SensorCreateFormValidator sensorCreateFormValidator;

    private static final String VIEWNAME = "sensor";
    
    @InitBinder("form")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(sensorCreateFormValidator);
    }

    @RequestMapping(value = "/sensors", method = RequestMethod.GET)
    public String getsensors(Model model) {
        model.addAttribute(ModelKeys.SENSORS, sensorService.getAllSensors());
        return "sensor_list";
    }

    @RequestMapping(value = "/sensor/{id}", method = RequestMethod.GET)
    public String editSensor(Model model, @PathVariable String id) {
        Sensor sensor = sensorService.getSensorById(Integer.valueOf(id));
        SensorCreateForm sensorCreateForm = new SensorCreateForm();
        sensorCreateForm.setIconPath(sensor.getIconPath());
        sensorCreateForm.setName(sensor.getName());
        sensorCreateForm.setUnit(sensor.getUnit());
        sensorCreateForm.setId(sensor.getId());

        model.addAttribute(ModelKeys.FORM, sensorCreateForm);
        return VIEWNAME;
    }

    @RequestMapping(value = "/sensor/{id}", method = RequestMethod.POST)
    public String handleSensorEditForm(@Valid @ModelAttribute("form") SensorCreateForm form,
            BindingResult bindingResult) {
        sensorService.update(form);
        return "redirect:/sensors";
    }

    @RequestMapping(value = "/sensors/create", method = RequestMethod.GET)
    public String getSensorCreatePage(Model model) {
        model.addAttribute(ModelKeys.FORM, new SensorCreateForm());
        return VIEWNAME;
    }

    @RequestMapping(value = "/sensors/create", method = RequestMethod.POST)
    public String handleSensorCreateForm(@Valid @ModelAttribute("form") SensorCreateForm form,
            BindingResult bindingResult) {
        LOGGER.debug("Processing sensor create form={}, bindingResult={}", form, bindingResult);
        if (bindingResult.hasErrors()) {
            // failed validation
            return VIEWNAME;
        }
        try {
            sensorService.create(form);
        } catch (Exception e) {
            LOGGER.warn("Exception occurred when trying to save the sensor", e);
            bindingResult.reject("name.empty", "Name");
            return VIEWNAME;
        }
        // ok, redirect
        return "redirect:/sensors";
    }
}
