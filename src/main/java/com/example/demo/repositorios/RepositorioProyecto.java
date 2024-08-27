package com.example.demo.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.modelos.Proyecto;

@Repository
public interface RepositorioProyecto extends CrudRepository <Proyecto, Long>{
	List<Proyecto> findAll();
}
