package com.bmw.seed.service.impl;

import com.bmw.seed.dao.UserInfoDao;
import com.bmw.seed.service.UserInfoService;
import com.bmw.seed.util.redis.RedisUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoDao userInfoDao;

    @Autowired
    private RedisUtil redisUtil;

    /**
     * 转储
     * @return 你好
     */
    @Override
    public boolean transfer() {
        String token = "token";
        if (redisUtil.setIfNotExists(token, "1")) {
            try {
                //拿到token 可以执行
                if (userInfoDao.getCount() == 0) {
                    //空表 可以执行
                    log.info("开始执行转储");
                    userInfoDao.backup();
                } else {
                    log.info("转储失败：已经转储过了");
                    return false;
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                redisUtil.del(token);
                log.info("token已移除");
            }
        } else {
            //没拿到token 不执行
            log.info("转储失败：已有线程在转储");
            return false;
        }
        return true;
    }
}
