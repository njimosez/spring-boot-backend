package com.kombefarms.springbootbackend.model;

import java.time.LocalDate;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "feeding")
public class Feeding {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int feedingId;
	
	private LocalDate feedingDate;
	private int feedOut;
	private int qtyFed;
	private double avgFishSize;
	private int pelletSize;
	private int timesFed;
	
	@ManyToOne
	  @JsonIgnore
	  @JoinColumn(name = "stockID")
	  private Stock stock;
	
	
	
	
	

}
