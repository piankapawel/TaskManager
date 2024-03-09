package pl.coderslab.status;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class StatusConverter implements Converter<String, Status> {

    @Autowired
    private StatusDao statusDao;

    @Override
    public Status convert(String source){
        return statusDao.findById(Long.parseLong(source));
    }
}
