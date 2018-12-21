/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cibt.web.controller;

import com.cibt.web.entity.Course;
import com.cibt.web.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author anis
 */
@Controller
@RequestMapping(value = "/admin/courses")
public class CourseController {
    
    @Autowired
    private CourseRepository courseRepository;
    
    @GetMapping
    public String index(Model model){
        model.addAttribute("courses",courseRepository.findAll());
        return "course/index";
    }
    
    @GetMapping("/add")
    public String addView(){
        return "course/add";
    }
    
    @PostMapping("/add")
    public String addCourse(@ModelAttribute("course")Course course){
        courseRepository.save(course);
        return addView();
    }
    
    @GetMapping("/update/{id}")
    public String updateView(Model model,@PathVariable int id){
        System.out.println("Here at update course controller");
        model.addAttribute("courses", courseRepository.getOne(id));
        return "course/add";
    }
    
    @PostMapping("/update/{id}")
    public String updateCourse(@ModelAttribute("course")Course course,@PathVariable int id){
        Course c = courseRepository.getOne(id);
        course.setAddedDate(c.getAddedDate());
        courseRepository.save(course);
        return addView();
    }
    
    @PostMapping("/delete/{id}")
    public String deleteCourse(@PathVariable int id,Model model){
        courseRepository.deleteById(id);
        return index(model);
    }
}
