package com.generation.lojadegames.controller;

import java.math.BigDecimal;
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

import com.generation.lojadegames.model.ProdutoModel;
import com.generation.lojadegames.repository.ProdutoRepository;

@RestController
@CrossOrigin("*")
@RequestMapping("/produto")
public class ProdutoController {


	@Autowired
	private ProdutoRepository repository;
	
	@GetMapping
	private ResponseEntity<List<ProdutoModel>> getAll(){
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/{id}")
	private ResponseEntity<ProdutoModel> getById(@PathVariable Long id){
		return repository.findById(id).map(resp ->ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
		
	}
	
	@GetMapping("/item{produto}")
	private ResponseEntity<List<ProdutoModel>>getByItem(@PathVariable String item){
		return ResponseEntity.ok(repository.findAllByItemContainingIgnoreCase(item));
	}
	
	@GetMapping("/preco_inicial/{inicio}/preco_final{fim}")
	public ResponseEntity<List<ProdutoModel>>getByPreco(@PathVariable BigDecimal inicio,@PathVariable BigDecimal fim){
		return ResponseEntity.ok(repository.findAllByPrecoBetween(inicio, fim));
	}
	
	@PostMapping
	private ResponseEntity<ProdutoModel> post(@Valid @RequestBody ProdutoModel produto){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(produto));
		
	}
	@PutMapping
	private ResponseEntity<ProdutoModel> put(@RequestBody ProdutoModel produto){
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(produto));
		
	}
	
	@DeleteMapping("/{id}")
	private void delete(@PathVariable Long id) {
		repository.deleteById(id);
	}
}
