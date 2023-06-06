package com.kombefarms.springbootbackend.model;


import java.time.LocalDate;
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
@Table(name = "stock")
public class Stock {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int stockId;
	
	private String fishSpecy;
	private LocalDate stockDate;
	private LocalDate dateEmptied;
	private int totalStock;
	private int mortality;
	private int stockRemaining;
	
	  @JsonIgnore
	  @OneToMany(mappedBy = "stock")
	  private List<Sampling> sample;
	  
	  @JsonIgnore
	  @OneToMany(mappedBy = "stock")
	  private List<Feeding> feed;
	  
	  @ManyToOne
	  @JsonIgnore
	  @JoinColumn(name = "pondId")
	  private Pond pond;
	  
	  
	
}
