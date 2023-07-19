package com.bmw.seed.dao;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface UserInfoDao {
    /**
     * 转储
     * @return
     */
    public boolean backup();

    @Select("select count(id) from user_info")
    Integer getCount();
}
