package com.example.capstonproject.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class MainController {

    @GetMapping("/member/main")
    public String mainP(){
        return "member/main";
    }
}
