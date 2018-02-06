package edu.monmouth.Dao;

import edu.monmouth.Domain.Product;

import java.util.List;

public interface ProductMapper {
   public List<Product> findProductName(String name);
}
