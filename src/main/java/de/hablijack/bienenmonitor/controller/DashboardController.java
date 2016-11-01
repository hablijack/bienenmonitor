package de.hablijack.bienenmonitor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {
    
    private static final String VIEWNAME = "dashboard";
    
    @RequestMapping("/dashboard.html")
    public String index() {
        return VIEWNAME;
    }
}
