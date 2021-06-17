package com.spring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.spring.entity.Categorie;
import com.spring.repository.CategoriesRepository;

@Service
public class CategoriesServiceImpl implements CategoriesService {
	
	@Autowired
	private CategoriesRepository repository;

	
	@Override
	public <S extends Categorie> S save(S entity) {
		return repository.save(entity);
	}

	@Override
	public <S extends Categorie> Optional<S> findOne(Example<S> example) {
		return repository.findOne(example);
	}

	@Override
	public Page<Categorie> findAll(Pageable pageable) {
		return repository.findAll(pageable);
	}

	@Override
	public List<Categorie> findAll() {
		return repository.findAll();
	}

	@Override
	public List<Categorie> findAll(Sort sort) {
		return repository.findAll(sort);
	}

	@Override
	public List<Categorie> findAllById(Iterable<Integer> ids) {
		return repository.findAllById(ids);
	}

	@Override
	public Optional<Categorie> findById(Integer id) {
		return repository.findById(id);
	}

	@Override
	public <S extends Categorie> List<S> saveAll(Iterable<S> entities) {
		return repository.saveAll(entities);
	}

	@Override
	public void flush() {
		repository.flush();
	}

	@Override
	public <S extends Categorie> S saveAndFlush(S entity) {
		return repository.saveAndFlush(entity);
	}

	@Override
	public boolean existsById(Integer id) {
		return repository.existsById(id);
	}

	@Override
	public <S extends Categorie> List<S> saveAllAndFlush(Iterable<S> entities) {
		return repository.saveAllAndFlush(entities);
	}

	@Override
	public <S extends Categorie> Page<S> findAll(Example<S> example, Pageable pageable) {
		return repository.findAll(example, pageable);
	}

	@Override
	public void deleteInBatch(Iterable<Categorie> entities) {
		repository.deleteInBatch(entities);
	}

	@Override
	public <S extends Categorie> long count(Example<S> example) {
		return repository.count(example);
	}

	@Override
	public <S extends Categorie> boolean exists(Example<S> example) {
		return repository.exists(example);
	}

	@Override
	public void deleteAllInBatch(Iterable<Categorie> entities) {
		repository.deleteAllInBatch(entities);
	}

	@Override
	public long count() {
		return repository.count();
	}

	@Override
	public void deleteById(Integer id) {
		repository.deleteById(id);
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Integer> ids) {
		repository.deleteAllByIdInBatch(ids);
	}

	@Override
	public void delete(Categorie entity) {
		repository.delete(entity);
	}

	@Override
	public void deleteAllById(Iterable<? extends Integer> ids) {
		repository.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		repository.deleteAllInBatch();
	}

	@Override
	public Categorie getOne(Integer id) {
		return repository.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends Categorie> entities) {
		repository.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		repository.deleteAll();
	}

	@Override
	public Categorie getById(Integer id) {
		return repository.getById(id);
	}

	@Override
	public <S extends Categorie> List<S> findAll(Example<S> example) {
		return repository.findAll(example);
	}

	@Override
	public <S extends Categorie> List<S> findAll(Example<S> example, Sort sort) {
		return repository.findAll(example, sort);
	};
	
}
