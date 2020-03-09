package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Product;
import com.example.demo.repository.ProductRepositoy;

@Service
@Transactional
public class ProductService {
	
	@Autowired
	ProductRepositoy repo;
	
	public List<Product> findAll()
	{
		return repo.findAll();
	}
	
	public Product findbyId(int id)
	{
		return repo.findById(id).get();
	}
	
	public void save(Product p)
	{
		repo.save(p);
	}
	
	
	  public void delete(int  id) {
	        repo.deleteById(id);
	  }

}
