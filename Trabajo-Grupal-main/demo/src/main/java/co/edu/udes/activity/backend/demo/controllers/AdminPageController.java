package co.edu.udes.activity.backend.demo.controllers;

import co.edu.udes.activity.backend.demo.models.Subject;
import co.edu.udes.activity.backend.demo.services.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AdminPageController {

    @Autowired
    private SubjectService subjectService;

    // Muestra la página principal del panel de administración
    @GetMapping("/admin-home")
    public String showAdminHomePage() {
        return "adminHome"; // /WEB-INF/jsp/adminHome.jsp
    }

    // Muestra la página de administración de materias
    @GetMapping("/admin-materias")
    public String showAdminSubjectsPage(Model model) {
        List<Subject> subjects = subjectService.getAllSubjects();
        model.addAttribute("subjects", subjects);
        return "adminMateria"; // /WEB-INF/jsp/adminMateria.jsp
    }
}
