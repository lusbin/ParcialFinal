package co.edu.udes.activity.backend.demo.controllers;

import co.edu.udes.activity.backend.demo.models.Subject;
import co.edu.udes.activity.backend.demo.services.SubjectService;
import co.edu.udes.activity.backend.demo.services.PrerequisiteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/subjects")
public class SubjectViewController {

    @Autowired
    private SubjectService subjectService;

    @Autowired
    private PrerequisiteService prerequisiteService;

    @GetMapping
    public String listSubjects(Model model) {
        model.addAttribute("subjects", subjectService.getAllSubjects());
        model.addAttribute("newSubject", new Subject());
        model.addAttribute("prerequisites", prerequisiteService.getAllPrerequisites());
        return "subjects";
    }

    @PostMapping("/add")
    public String addSubject(@ModelAttribute Subject subject) {
        subjectService.saveSubject(subject);
        return "redirect:/subjects";
    }

    @GetMapping("/delete/{id}")
    public String deleteSubject(@PathVariable("id") int id) {
        subjectService.deleteSubject(id);
        return "redirect:/subjects";
    }
}
