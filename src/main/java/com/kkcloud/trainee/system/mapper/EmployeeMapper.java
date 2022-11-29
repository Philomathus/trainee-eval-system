package com.kkcloud.trainee.system.mapper;
import com.kkcloud.trainee.system.DTO.EmployeeDTO;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface EmployeeMapper {

     List<EmployeeDTO> getEmployeeByUsername(EmployeeDTO employeeDTO);

}
