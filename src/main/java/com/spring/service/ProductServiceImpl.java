package com.spring.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.spring.entity.Product;
import com.spring.repository.ProductRepository;


@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductRepository reposito;

	@Override
	@Query("Select entity from Product entity where status=:status ")
	public  List<Product> findByStatus(@Param("status") Integer status) {
		
		return reposito.findByStatus(status);
	}
	@Override
	public <S extends Product> S save(S entity) {
		return reposito.save(entity);
	}

	@Override
	public <S extends Product> Optional<S> findOne(Example<S> example) {
		return reposito.findOne(example);
	}

	@Override
	public Page<Product> findAll(Pageable pageable) {
		return reposito.findAll(pageable);
	}

	@Override
	public List<Product> findAll() {
		return reposito.findAll();
	}

	@Override
	public List<Product> findAll(Sort sort) {
		return reposito.findAll(sort);
	}

	@Override
	public List<Product> findAllById(Iterable<Integer> ids) {
		return reposito.findAllById(ids);
	}

	@Override
	public Optional<Product> findById(Integer id) {
		return reposito.findById(id);
	}

	@Override
	public <S extends Product> List<S> saveAll(Iterable<S> entities) {
		return reposito.saveAll(entities);
	}

	@Override
	public void flush() {
		reposito.flush();
	}

	@Override
	public <S extends Product> S saveAndFlush(S entity) {
		return reposito.saveAndFlush(entity);
	}

	@Override
	public boolean existsById(Integer id) {
		return reposito.existsById(id);
	}

	@Override
	public <S extends Product> List<S> saveAllAndFlush(Iterable<S> entities) {
		return reposito.saveAllAndFlush(entities);
	}

	@Override
	public <S extends Product> Page<S> findAll(Example<S> example, Pageable pageable) {
		return reposito.findAll(example, pageable);
	}

	@Override
	public void deleteInBatch(Iterable<Product> entities) {
		reposito.deleteInBatch(entities);
	}

	@Override
	public <S extends Product> long count(Example<S> example) {
		return reposito.count(example);
	}

	@Override
	public <S extends Product> boolean exists(Example<S> example) {
		return reposito.exists(example);
	}

	@Override
	public void deleteAllInBatch(Iterable<Product> entities) {
		reposito.deleteAllInBatch(entities);
	}

	@Override
	public long count() {
		return reposito.count();
	}

	@Override
	public void deleteById(Integer id) {
		reposito.deleteById(id);
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Integer> ids) {
		reposito.deleteAllByIdInBatch(ids);
	}

	@Override
	public void delete(Product entity) {
		reposito.delete(entity);
	}

	@Override
	public void deleteAllById(Iterable<? extends Integer> ids) {
		reposito.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		reposito.deleteAllInBatch();
	}

	@Override
	public Product getOne(Integer id) {
		return reposito.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends Product> entities) {
		reposito.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		reposito.deleteAll();
	}

	@Override
	public Product getById(Integer id) {
		return reposito.getById(id);
	}

	@Override
	public <S extends Product> List<S> findAll(Example<S> example) {
		return reposito.findAll(example);
	}

	@Override
	public <S extends Product> List<S> findAll(Example<S> example, Sort sort) {
		return reposito.findAll(example, sort);
	}
	@Override
	public List<Product> findByName(String name) {
		return reposito.findByName(name);
	}
	@Override
	public Page<Product> findByName(String name, Pageable pageable) {
		return reposito.findByName(name, pageable);
	};
	
	
}
