package com.generation.lojadegames.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.generation.lojadegames.model.CategoriaModel;
import com.generation.lojadegames.repository.CategoriaRepository;

@RestController
@RequestMapping ("/categoria")
@CrossOrigin("*")
public class CategoriaController {

	@Autowired
	private CategoriaRepository repository;
	
	@GetMapping
	private ResponseEntity<List<CategoriaModel>> getAll(){
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/{id}")
	private ResponseEntity<CategoriaModel> getById(@PathVariable Long id){
		return repository.findById(id).map(resp ->ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
		
	}
	
	@GetMapping("/classe/{classe}")
	private ResponseEntity<List<CategoriaModel>>getByClasse(@PathVariable String classe){
		return ResponseEntity.ok(repository.findAllByClasseContainingIgnoreCase(classe));
	}
	
	@PostMapping
	private ResponseEntity<CategoriaModel> post(@Valid @RequestBody CategoriaModel categoria){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(categoria));
		
	}
	@PutMapping
	private ResponseEntity<CategoriaModel> put(@RequestBody CategoriaModel categoria){
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(categoria));
		
	}
	
	@DeleteMapping("/{id}")
	private void delete(@PathVariable Long id) {
		repository.deleteById(id);
	}
}
