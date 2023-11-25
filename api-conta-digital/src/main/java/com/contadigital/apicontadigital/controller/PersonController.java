package com.contadigital.apicontadigital.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RestController
public class PersonController {

    @GetMapping(path = "teste")
    public Long getTeste() {
        return 1L;
    }
}
