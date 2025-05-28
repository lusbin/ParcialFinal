package co.edu.udes.activity.backend.demo.controllers;

import co.edu.udes.activity.backend.demo.dto.UserDTO;
import co.edu.udes.activity.backend.demo.dto.UserRequestDTO;
import co.edu.udes.activity.backend.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/users")
public class ViewController {

    @Autowired
    private UserService userService;

    // 1) Mostrar lista y formulario vacío
    @GetMapping
    public String showUsers(Model model) {
        List<UserDTO> users = userService.getAllUsers();
        model.addAttribute("users", users);
        model.addAttribute("userRequest", new UserRequestDTO());
        return "users";      // /WEB-INF/jsp/users.jsp
    }

    // 2) Procesar envío del formulario (creación simple)
    @PostMapping
    public String createUser(@ModelAttribute("userRequest") UserRequestDTO userRequest) {
        userService.saveUser(userRequest);
        return "redirect:/users";
    }
}