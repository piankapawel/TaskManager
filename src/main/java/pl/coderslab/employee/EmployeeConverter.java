package pl.coderslab.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class EmployeeConverter implements Converter<String, Employee> {

    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public Employee convert(String source){
        return employeeDao.findById(Long.parseLong(source));
    }
}
