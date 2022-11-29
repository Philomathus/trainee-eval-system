package com.kkcloud.trainee.system.mapper;

import com.kkcloud.trainee.system.DTO.UpdateDetailTitleDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UpdateDetailTitleMapper {

    void updateDetailTitle(UpdateDetailTitleDTO updateDetailTitleDTO);

}
