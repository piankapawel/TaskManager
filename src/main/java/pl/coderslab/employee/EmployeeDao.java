package pl.coderslab.employee;

import org.springframework.stereotype.Repository;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class EmployeeDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void add(Employee employee){
        entityManager.persist(employee);
    }

    public Employee findById(long id){
        return entityManager.find(Employee.class, id);
    }

    public void update(Employee employee){
        entityManager.merge(employee);
    }

    public void delete(Employee employee){
        entityManager.remove(entityManager.contains(employee)? employee: entityManager.merge(employee));
    }

    public List<Employee> list(){
        Query query = entityManager.createQuery("SELECT a FROM Employee a");
        return query.getResultList();
    }

}
