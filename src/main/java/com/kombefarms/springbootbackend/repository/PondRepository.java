package com.kombefarms.springbootbackend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kombefarms.springbootbackend.model.Pond;



@Repository
public interface PondRepository extends JpaRepository<Pond, Integer> {

}
