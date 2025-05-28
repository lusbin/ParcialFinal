package co.edu.udes.activity.backend.demo.controllers;

import co.edu.udes.activity.backend.demo.dto.UserDTO;
import co.edu.udes.activity.backend.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.HttpSession; // Asegúrate de importar jakarta si estás usando Spring Boot 3+

import java.util.Optional;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    // 1) Mostrar el formulario de login
    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }

    // 2) Procesar login
    @PostMapping("/login")
    public String doLogin(@RequestParam String firstName,
                          @RequestParam String password,
                          Model model,
                          HttpSession session) {

        Optional<UserDTO> opt = userService.getAllUsers().stream()
                .filter(u -> u.getFirstName().equals(firstName)
                        && u.getPassword().equals(password))
                .findFirst();

        if (opt.isEmpty()) {
            model.addAttribute("error", "Credenciales inválidas");
            return "login";
        }

        UserDTO user = opt.get();
        session.setAttribute("user", user); // Guardar usuario en sesión

        // Redirigir según el rol
        if ("ADMIN".equalsIgnoreCase(user.getRoleName())) {
            return "redirect:/adminPage";
        } else {
            return "redirect:/userPage";
        }
    }

    // 3) Página para el rol ADMIN
    @GetMapping("/adminPage")
    public String adminPage(HttpSession session, Model model) {
        UserDTO user = (UserDTO) session.getAttribute("user");

        if (user == null || !"ADMIN".equalsIgnoreCase(user.getRoleName())) {
            return "redirect:/login";
        }

        model.addAttribute("user", user);
        return "adminPage";
    }

    // 4) Página para el rol USER
    @GetMapping("/userPage")
    public String userPage(HttpSession session, Model model) {
        UserDTO user = (UserDTO) session.getAttribute("user");

        if (user == null || !"USER".equalsIgnoreCase(user.getRoleName())) {
            return "redirect:/login";
        }

        model.addAttribute("user", user);
        return "userPage";
    }

    // 5) Logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Cerrar sesión
        return "redirect:/login";
    }
}
