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
import de.hablijack.bienenmonitor.domain.Hive;
import de.hablijack.bienenmonitor.domain.validator.HiveCreateFormValidator;
import de.hablijack.bienenmonitor.form.HiveCreateForm;
import de.hablijack.bienenmonitor.service.HiveService;

@Controller
public class HiveController {

    private static final Logger LOGGER = LoggerFactory.getLogger(HiveController.class);
    @Autowired
    private HiveService hiveService;
    @Autowired
    private HiveCreateFormValidator hiveCreateFormValidator;

    @InitBinder("form")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(hiveCreateFormValidator);
    }

    @RequestMapping(value = "/hives", method = RequestMethod.GET)
    public String gethives(Model model) {
        model.addAttribute(ModelKeys.HIVES, hiveService.getAllHives());
        return "hive_list";
    }

    @RequestMapping(value = "/hive/{id}", method = RequestMethod.GET)
    public String editHive(Model model, @PathVariable String id) {
        Hive hive = hiveService.getHiveById(Integer.valueOf(id));
        HiveCreateForm hiveCreateForm = new HiveCreateForm();
        hiveCreateForm.setCombCount(hive.getCombCount());
        hiveCreateForm.setAssemblyDate(hive.getAssemblyDate());
        hiveCreateForm.setId(hive.getId());
        hiveCreateForm.setName(hive.getName());
        hiveCreateForm.setPosition(hive.getPosition());
        hiveCreateForm.setType(hive.getType());
        hiveCreateForm.setColor(hive.getColor());
        hiveCreateForm.setCombPerBox(hive.getCombPerBox());

        model.addAttribute(ModelKeys.FORM, hiveCreateForm);
        return "hive";
    }

    @RequestMapping(value = "/hive/{id}", method = RequestMethod.POST)
    public String handleHiveEditForm(@Valid @ModelAttribute("form") HiveCreateForm form, BindingResult bindingResult) {
        hiveService.update(form);
        return "redirect:/hives";
    }

    @RequestMapping(value = "/hives/create", method = RequestMethod.GET)
    public String getHiveCreatePage(Model model) {
        model.addAttribute(ModelKeys.FORM, new HiveCreateForm());
        return "hive";
    }

    @RequestMapping(value = "/hives/create", method = RequestMethod.POST)
    public String handleHiveCreateForm(@Valid @ModelAttribute("form") HiveCreateForm form,
            BindingResult bindingResult) {
        LOGGER.debug("Processing hive create form={}, bindingResult={}", form, bindingResult);
        if (bindingResult.hasErrors()) {
            // failed validation
            return "hive";
        }
        try {
            hiveService.create(form);
        } catch (Exception e) {
            LOGGER.warn("Exception occurred when trying to save the hive", e);
            bindingResult.reject("name.empty", "Name");
            return "hive";
        }
        // ok, redirect
        return "redirect:/hives";
    }

}
