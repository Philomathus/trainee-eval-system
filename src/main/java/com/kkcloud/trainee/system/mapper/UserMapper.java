 package com.kkcloud.trainee.system.mapper;

 import com.kkcloud.trainee.system.DTO.MenteesDTO;
 import com.kkcloud.trainee.system.DTO.RegisterDTO;
 import com.kkcloud.trainee.system.model.UserModel;
 import org.apache.ibatis.annotations.Mapper;
 import java.util.Optional;

 @Mapper
 public interface UserMapper {
    Optional<UserModel> findByUsername(String username);

    boolean userExists(String email, String userUsername);
//
      void registerUser(RegisterDTO userDTO);

      void insertMenteeToMentor(MenteesDTO menteesDTO);
 }
