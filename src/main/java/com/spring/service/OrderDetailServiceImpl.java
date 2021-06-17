package com.spring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.spring.entity.OrderDetail;
import com.spring.repository.OrderDetailRepository;

@Service
@SessionScope
public class OrderDetailServiceImpl implements OrderDetailService {
	
	@Autowired
	private OrderDetailRepository orderDetail;

	@Override
	public List<OrderDetail> findByProduct(Integer product_id) {
		return orderDetail.findByProduct(product_id);
	}

	@Override
	public <S extends OrderDetail> S save(S entity) {
		return orderDetail.save(entity);
	}

	@Override
	public <S extends OrderDetail> Optional<S> findOne(Example<S> example) {
		return orderDetail.findOne(example);
	}

	@Override
	public Page<OrderDetail> findAll(Pageable pageable) {
		return orderDetail.findAll(pageable);
	}

	@Override
	public List<OrderDetail> findAll() {
		return orderDetail.findAll();
	}

	@Override
	public List<OrderDetail> findAll(Sort sort) {
		return orderDetail.findAll(sort);
	}

	@Override
	public List<OrderDetail> findAllById(Iterable<Integer> ids) {
		return orderDetail.findAllById(ids);
	}

	@Override
	public Optional<OrderDetail> findById(Integer id) {
		return orderDetail.findById(id);
	}

	@Override
	public <S extends OrderDetail> List<S> saveAll(Iterable<S> entities) {
		return orderDetail.saveAll(entities);
	}

	@Override
	public void flush() {
		orderDetail.flush();
	}

	@Override
	public <S extends OrderDetail> S saveAndFlush(S entity) {
		return orderDetail.saveAndFlush(entity);
	}

	@Override
	public boolean existsById(Integer id) {
		return orderDetail.existsById(id);
	}

	@Override
	public <S extends OrderDetail> List<S> saveAllAndFlush(Iterable<S> entities) {
		return orderDetail.saveAllAndFlush(entities);
	}

	@Override
	public <S extends OrderDetail> Page<S> findAll(Example<S> example, Pageable pageable) {
		return orderDetail.findAll(example, pageable);
	}

	@Override
	public void deleteInBatch(Iterable<OrderDetail> entities) {
		orderDetail.deleteInBatch(entities);
	}

	@Override
	public <S extends OrderDetail> long count(Example<S> example) {
		return orderDetail.count(example);
	}

	@Override
	public <S extends OrderDetail> boolean exists(Example<S> example) {
		return orderDetail.exists(example);
	}

	@Override
	public void deleteAllInBatch(Iterable<OrderDetail> entities) {
		orderDetail.deleteAllInBatch(entities);
	}

	@Override
	public long count() {
		return orderDetail.count();
	}

	@Override
	public void deleteById(Integer id) {
		orderDetail.deleteById(id);
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Integer> ids) {
		orderDetail.deleteAllByIdInBatch(ids);
	}

	@Override
	public void delete(OrderDetail entity) {
		orderDetail.delete(entity);
	}

	@Override
	public void deleteAllById(Iterable<? extends Integer> ids) {
		orderDetail.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		orderDetail.deleteAllInBatch();
	}

	@Override
	public OrderDetail getOne(Integer id) {
		return orderDetail.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends OrderDetail> entities) {
		orderDetail.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		orderDetail.deleteAll();
	}

	@Override
	public OrderDetail getById(Integer id) {
		return orderDetail.getById(id);
	}

	@Override
	public <S extends OrderDetail> List<S> findAll(Example<S> example) {
		return orderDetail.findAll(example);
	}

	@Override
	public <S extends OrderDetail> List<S> findAll(Example<S> example, Sort sort) {
		return orderDetail.findAll(example, sort);
	}
	
}
