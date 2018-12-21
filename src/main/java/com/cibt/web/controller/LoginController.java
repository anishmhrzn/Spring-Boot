/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cibt.web.controller;

import com.cibt.web.entity.User;
import com.cibt.web.repository.UserRepository;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author anis
 */
@Controller
@RequestMapping(value = "/login")
public class LoginController {
    
    @Autowired
    private UserRepository userRepository;
    
    @GetMapping()
    public String login(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("loggedin") != null) {
            return "index";
        }
        return "login/index";
    }

    @PostMapping()
    public String loginAuth(@RequestParam("username") String username,
            @RequestParam("password") String password,
            HttpServletRequest request, Model model) {

        for (User u : userRepository.findAll()) {
            if (username.equals(u.getUsername()) && password.equals(u.getPassword())) {
                HttpSession session = request.getSession(true);
                session.setAttribute("loggedin", true);
                return "index";
            }
        }
        model.addAttribute("error", true);
        return "login/index";

    }
}
