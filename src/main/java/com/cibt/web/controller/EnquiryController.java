/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cibt.web.controller;

import com.cibt.web.entity.Enquiry;
import com.cibt.web.repository.CourseRepository;
import com.cibt.web.repository.EnquiryRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author anis
 */
@Controller
@RequestMapping(value = "/admin/enquiry")
public class EnquiryController {
    
    @Autowired
    private EnquiryRepository enquiryRepository;
    
    @Autowired
    private CourseRepository courseRepository;
    
    @GetMapping()
    public String index(Model model){
        List<Enquiry> enquirys = enquiryRepository.findAll();
        for(Enquiry e: enquirys){
            e.getStatus();
        }
        model.addAttribute("enquiries",enquiryRepository.findAll());
        return "enquiry/index";
    }
    
    @GetMapping("/add")
    public String addView(Model model){
        model.addAttribute("courses", courseRepository.findAll());
        return "enquiry/add";
    }
    
    @PostMapping("/add")
    public String addEnquiry(@ModelAttribute("enquiry")Enquiry enquiry, Model model){
        enquiryRepository.save(enquiry);
        return index(model);
    }
}
