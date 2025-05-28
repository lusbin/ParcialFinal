package co.edu.udes.activity.backend.demo.controllers;

import co.edu.udes.activity.backend.demo.dto.UserDTO;
import co.edu.udes.activity.backend.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;

    @GetMapping("/")         // redirige a la vista index.jsp
    public String index(Model model) {
        // 1) Obtiene todos los usuarios
        List<UserDTO> usuarios = userService.getAllUsers();

        // 2) Se los pasa al JSP bajo el atributo "users"
        model.addAttribute("users", usuarios);

        // 3) Devuelve el nombre lógico de la vista (src/main/webapp/WEB-INF/jsp/index.jsp)
        return "index";
    }
}