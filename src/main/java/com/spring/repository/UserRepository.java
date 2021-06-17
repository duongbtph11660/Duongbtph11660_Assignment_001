package com.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.spring.entity.User;

@Repository 
public interface UserRepository extends JpaRepository<User, Integer> {
	@Query("Select entity from User entity where email=:email ")
	public User findByEmail(@Param("email") String email);
}
