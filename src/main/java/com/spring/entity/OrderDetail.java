package com.spring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="order_details")
public class OrderDetail {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "quantity")
	private Integer quantity;
	
	@Column(name = "price")
	private Float price;
	
	@ManyToOne()
	@JoinColumn(name = "product_id", referencedColumnName = "id")
	private Product product_id;
	
//	@ManyToOne()
//	@JoinColumn(name = "order_id", referencedColumnName = "id")
//	private Order order_id;
}
