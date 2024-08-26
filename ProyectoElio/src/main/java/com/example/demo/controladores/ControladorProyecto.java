package com.example.demo.controladores;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.modelos.Proyecto;
import com.example.demo.modelos.Usuario;
import com.example.demo.servicios.ServicioProyecto;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorProyecto {
	@Autowired
	private final ServicioProyecto servicioProyecto;
	
	public ControladorProyecto(ServicioProyecto servicioProyecto) {
		this.servicioProyecto = servicioProyecto;
	}
	
	@GetMapping("/")
	public String desplegarProyetos(Model model) {
		List <Proyecto> proyectos  = this.servicioProyecto.obtenerProyectos();
		model.addAttribute("proyectos", proyectos);
		return "index.jsp";
	}
	
	@GetMapping("/proyectos")
	public String desplegarProyetos(HttpSession sesion, Model model) {
		if(sesion.getAttribute("id_usuario") == null) {
			return "redirect:/login";
		}
		List <Proyecto> proyectos  = this.servicioProyecto.obtenerProyectos();
		model.addAttribute("proyectos", proyectos);
		return "proyecto.jsp";
	}
	
	@GetMapping("/nuevo")
	public String desplegarFormularioEvento(@ModelAttribute("proyecto") Proyecto proyecto,
											Model model) {
		return "formularioProyecto.jsp";
	}
	
	@PostMapping("/nuevo")
	public String agregarProyecto(@Valid @ModelAttribute("proyecto") Proyecto proyecto,
	                              BindingResult validaciones,
	                              @RequestParam("image") MultipartFile image,
	                              HttpSession sesion) {
	    if (validaciones.hasErrors()) {
	        return "formularioProyecto.jsp";
	    }

	    if (!image.isEmpty()) {
	        try {
	            // Define la ruta base donde se guardarán las imágenes
	            String uploadDir = "C:/upload/"; // Cambia esto a una ruta accesible
	            File uploadDirFile = new File(uploadDir);
	            
	            // Verifica si el directorio existe, de lo contrario lo crea
	            if (!uploadDirFile.exists()) {
	                uploadDirFile.mkdirs(); // Crea el directorio si no existe
	            }
	            
	            // Genera un nombre único para la imagen
	            String imageName = UUID.randomUUID().toString() + "-" + image.getOriginalFilename();
	            
	            // Crea el archivo en la ruta especificada
	            File imageFile = new File(uploadDirFile, imageName);
	            
	            // Transfiere el archivo subido a la ruta especificada
	            image.transferTo(imageFile);
	            
	            // Guarda la URL de la imagen en el proyecto
	            String imageUrl = "/upload/" + imageName;
	            proyecto.setImageUrl(imageUrl);
	        } catch (IOException e) {
	            e.printStackTrace();
	            // Manejo de la excepción
	            return "formularioProyecto.jsp";
	        }
	    }

	    this.servicioProyecto.insertarProyecto(proyecto);
	    return "redirect:/proyectos";
	}



	
	@GetMapping("/detalle/{id}")
	public String detallesProyeto(@PathVariable("id") Long proyectoId,
	                             Model model,
	                             HttpSession sesion) {
	    
	    Proyecto proyecto = this.servicioProyecto.obtenerProyectoPorId(proyectoId);
	    model.addAttribute("proyecto", proyecto);
	    return "detallesProyecto.jsp";
	}
	
	@DeleteMapping("/eliminar/{id}")
	public String eliminarProyecto(@PathVariable("id") Long proyectoId,
					            HttpSession sesion) {
		Proyecto proyecto = this.servicioProyecto.obtenerProyectoPorId(proyectoId);
		this.servicioProyecto.eliminarProyecto(proyecto);
		return "redirect:/organizacion";
	}
	
	@GetMapping("/favicon.ico")
	public void favicon() {
	    // Método vacío para ignorar la solicitud
	}
}
