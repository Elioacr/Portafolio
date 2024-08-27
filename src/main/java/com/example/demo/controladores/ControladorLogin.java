package com.example.demo.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.example.demo.modelos.Usuario;
import com.example.demo.repositorios.RepositorioUsuario;

import jakarta.servlet.http.HttpSession;

@Controller
public class ControladorLogin {

    @Autowired
    private RepositorioUsuario repositorioUsuario;
    
    @GetMapping("/login")
    public String despliegaLogin(@ModelAttribute("usuario") Usuario usuario) {
        return "login.jsp";
    }

    @PostMapping("/procesa/login")
    public String login(@RequestParam String nombre, @RequestParam String contraseña, RedirectAttributes redirectAttributes, HttpSession sesion) {
        Usuario usuario = repositorioUsuario.findByNombreAndContraseña(nombre, contraseña);
        if (usuario != null) {
        	sesion.setAttribute("id_usuario", usuario.getId());
        	System.out.println("Usuario autenticado, redirigiendo a /proyectos");
            return "redirect:/proyectos";
        } else {
        	System.out.println("Login fallido, redirigiendo a /login");
            redirectAttributes.addFlashAttribute("error", "Nombre de usuario o contraseña incorrectos.");
            return "redirect:/login";
        }
    }
}
