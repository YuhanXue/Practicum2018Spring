package edu.monmouth.Service.Impl;

import edu.monmouth.Dao.ProductMapper;
import edu.monmouth.Domain.Product;
import edu.monmouth.Service.ProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ProductServiceImpl implements ProductService {
    @Resource
    private ProductMapper productMapper;
    @Override
    public String findProductName(String name) {
      List<Product> productList = productMapper.findProductName(name);
      String res="";
      for(int i=0;i<productList.size();i++){
          if(i>0){
              res+=","+productList.get(i).getName();
          }else {
              res+=productList.get(i).getName();
          }
      }
      return res;
    }
}
