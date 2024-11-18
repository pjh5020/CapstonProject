package com.example.capstonproject.main;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class MainController {
    @GetMapping("/main")
    public String mainP(){
        return "member/main";
    }

    @GetMapping("/schedule")
    public String schedule(){ return "member/schedule/schedule"; }
}
