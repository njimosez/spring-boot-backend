package com.kombefarms.springbootbackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kombefarms.springbootbackend.model.Stock;



@Repository
public interface StockRepository extends JpaRepository<Stock, Integer> {

}
