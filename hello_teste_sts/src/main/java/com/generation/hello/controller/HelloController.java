package com.generation.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController //Inidica para o Spring que o código abaixo é da classe controladora
@RequestMapping("/hello") //notação que indica a criação do endpoint
public class HelloController {

    @GetMapping //função de hello - dentro dos parenteses são os parametros da função, dentro das chaves o função retorna
    public String hello() {
        return "Hello World!!!";
    }

}

