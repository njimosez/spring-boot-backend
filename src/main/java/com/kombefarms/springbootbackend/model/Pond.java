package com.kombefarms.springbootbackend.model;


import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "pond")
public class Pond {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pondId;
	
	private String pondName;
	private Double area;
	private String targetFishType;
	
	
	@JsonIgnore
	  @OneToMany(mappedBy = "pond")
	  private List<Stock> stock;
}
