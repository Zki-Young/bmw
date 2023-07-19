package com.bmw.seed.service;

import com.bmw.seed.model.Demo;
import com.bmw.seed.util.bean.PageReq;
import com.bmw.seed.util.bean.PageResp;

public interface DemoService {

	PageResp<Demo> page(PageReq req);

	Integer save(Demo demo);

	Integer update(Demo demo);

	Integer delete(Long id);
}
