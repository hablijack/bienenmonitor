package de.hablijack.bienenmonitor.controller;

import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomepageController {

    @RequestMapping(value = { "", "/", "/index.html", "welcome" })
    public ModelAndView index(@RequestParam Optional<String> error) {
        return new ModelAndView("homepage", "error", error);
    }
}
