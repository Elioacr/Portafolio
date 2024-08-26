package com.example.demo.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.modelos.Proyecto;
import com.example.demo.repositorios.RepositorioProyecto;

@Service
public class ServicioProyecto {
	@Autowired
	private final RepositorioProyecto repositorioProyecto;
	
	public ServicioProyecto(RepositorioProyecto repositorioProyecto) {
		this.repositorioProyecto = repositorioProyecto;
	}
    
	public List<Proyecto> obtenerProyectos() {
		return this.repositorioProyecto.findAll();
	}
	public Proyecto obtenerProyectoPorId(Long id) {
		return this.repositorioProyecto.findById(id).orElse(null);
	}
	public Proyecto insertarProyecto(Proyecto proyecto) {
		return this.repositorioProyecto.save(proyecto);
	}
	public Proyecto actualizarProyecto(Proyecto proyecto) {
		return this.repositorioProyecto.save(proyecto);
	}
	public void eliminarProyecto(Proyecto proyecto) {
		this.repositorioProyecto.deleteById(proyecto.getId());
	}
}
