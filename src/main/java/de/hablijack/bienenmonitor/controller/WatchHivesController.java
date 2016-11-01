package de.hablijack.bienenmonitor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import de.hablijack.bienenmonitor.controller.util.ModelKeys;
import de.hablijack.bienenmonitor.service.HiveService;

@Controller
public class WatchHivesController {

    @Autowired
    private HiveService hiveService;

    @RequestMapping("/watchHives.html")
    public String watchHives(Model model) {
        model.addAttribute(ModelKeys.HIVES, hiveService.getAllHives());
        return "watch_hives";
    }
}
