package com.example.demo.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.modelos.Usuario;

@Repository
public interface RepositorioUsuario extends CrudRepository <Usuario, Long>{
	Usuario findByNombreAndContraseña(String nombre, String contraseña);
}
