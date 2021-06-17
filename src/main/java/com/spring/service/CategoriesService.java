package com.spring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.entity.Categorie;

public interface CategoriesService {

	<S extends Categorie> List<S> findAll(Example<S> example, Sort sort);

	<S extends Categorie> List<S> findAll(Example<S> example);

	Categorie getById(Integer id);

	void deleteAll();

	void deleteAll(Iterable<? extends Categorie> entities);

	Categorie getOne(Integer id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Integer> ids);

	void delete(Categorie entity);

	void deleteAllByIdInBatch(Iterable<Integer> ids);

	void deleteById(Integer id);

	long count();

	void deleteAllInBatch(Iterable<Categorie> entities);

	<S extends Categorie> boolean exists(Example<S> example);

	<S extends Categorie> long count(Example<S> example);

	void deleteInBatch(Iterable<Categorie> entities);

	<S extends Categorie> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Categorie> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Integer id);

	<S extends Categorie> S saveAndFlush(S entity);

	void flush();

	<S extends Categorie> List<S> saveAll(Iterable<S> entities);

	Optional<Categorie> findById(Integer id);

	List<Categorie> findAllById(Iterable<Integer> ids);

	List<Categorie> findAll(Sort sort);

	List<Categorie> findAll();

	Page<Categorie> findAll(Pageable pageable);

	<S extends Categorie> Optional<S> findOne(Example<S> example);

	<S extends Categorie> S save(S entity);

}
