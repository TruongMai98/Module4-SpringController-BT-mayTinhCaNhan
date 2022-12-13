package com.truongmai.calculatiuon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculatorController {
    @GetMapping("/")
    public String view() {
        return "index";
    }
    @GetMapping("/submit")
    public String calculator(@RequestParam("first") double first,
                             @RequestParam("second") double second,
                             @RequestParam("operator") char operator,
                             ModelMap modelMap) {
        double result = 0;
        switch (operator) {
            case '+':
                result = first + second;
                break;
            case '-':
                result = first - second;
                break;
            case '*':
                result = first * second;
                break;
            case '/':
                if (second == 0) {
                    modelMap.addAttribute("mess", " so thu 2 khac 0");
                } else {
                    result = first / second;
                }
                break;
        }
        modelMap.addAttribute("first", first);
        modelMap.addAttribute("second", second);
        modelMap.addAttribute("result",result);

        return "index";
    }
}
