/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cibt.web.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author anis
 */
@Controller
@RequestMapping(value = "/logout")
public class LogoutController {
    
    @GetMapping()
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "login/index";
    }
}
