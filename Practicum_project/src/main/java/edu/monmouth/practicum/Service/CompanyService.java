package edu.monmouth.practicum.Service;

import edu.monmouth.practicum.Dao.CompanyDao;
import edu.monmouth.practicum.Domain.Company;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CompanyService {
    @Resource
    private CompanyDao companyDao;
    public String findcompany(String name){
        String res = "";
        List<Company> companyList = companyDao.findByCompanynameLike(name);
        for(int i=0;i<companyList.size();i++){
            if(i>0){
                res+=","+companyList.get(i).getCompanyname();
            }else {
                res+=companyList.get(i).getCompanyname();
            }
        }
        return res;
    }
}
