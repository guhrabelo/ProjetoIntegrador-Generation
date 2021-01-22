package com.recreio.LivrariaAbraco.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "categoria")

public class Categoria {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id_Categoria;
	
	@NotNull 
	@Size(min = 8,max = 30)
	private String nome;
	
	@NotNull 
	@Size(min = 4,max = 30)
	private String tema;
	
	@NotNull 
	@Size(min = 4,max = 30)
	private String nacionalidade;
	
	public long getId_Categoria() {
		return id_Categoria;
	}
	public void setId_Categoria(long id_Categoria) {
		this.id_Categoria = id_Categoria;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTema() {
		return tema;
	}
	public void setTema(String tema) {
		this.tema = tema;
	}
	public String getNacionalidade() {
		return nacionalidade;
	}
	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

}


