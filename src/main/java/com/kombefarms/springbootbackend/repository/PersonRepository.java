package com.kombefarms.springbootbackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kombefarms.springbootbackend.model.Feeding;



@Repository
public interface PersonRepository extends JpaRepository<Feeding, Integer> {

}
