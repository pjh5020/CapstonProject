package com.example.capstonproject.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/member")
@Controller
public class PageController {
    @GetMapping("/main")
    public String mainP(){
        return "member/main";
    }

    @GetMapping("/myProfile")
    public String myProfile(){return "member/myProfile";}

    @GetMapping("/profile")
    public String profile(){return "member/profile/profile";}

    @GetMapping("/loginForm")
    public String loginP(){return "member/userLogin";}

    @GetMapping("/project")
    public String Project(){return "member/project";}

    @GetMapping("/picture")
    public String picture(){return "member/picture";}

}

