package com.bmw.seed.service.impl;

import com.bmw.seed.dao.DemoDao;
import com.bmw.seed.model.Demo;
import com.bmw.seed.service.DemoService;
import com.bmw.seed.util.bean.CommonQueryBean;
import com.bmw.seed.util.bean.PageReq;
import com.bmw.seed.util.bean.PageResp;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@Slf4j
public class DemoServiceImpl implements DemoService {

	@Autowired
	private DemoDao demoDao;

	public static int getPageCount(int count, int pageSize) {
		if (pageSize == 0) {
			return 0;
		} else {
			return count % pageSize == 0 ? count / pageSize : count / pageSize + 1;
		}
	}

	@Override
	public PageResp<Demo> page(PageReq req) {
		int start = (req.getPage() - 1) * req.getPageSize();
		Demo param = new Demo();
		CommonQueryBean queryBean = new CommonQueryBean();
		queryBean.setStart(start);
		queryBean.setPageSize(req.getPageSize());
		//物理分页
		List<Demo> list = demoDao.list4Page(param, queryBean);
		int count = demoDao.count(param);
		PageResp pageResp = new PageResp();
		pageResp.setList(list);
		pageResp.setPageNum(getPageCount(start + 1, req.getPageSize()));
		pageResp.setPageSize(req.getPageSize());
		pageResp.setTotalNum(count);
		pageResp.setTotalPage(getPageCount(count, req.getPageSize()));
		return pageResp;
	}

	@Override
	public Integer save(Demo demo) {
		return demoDao.insert(demo);
	}

	@Override
	public Integer update(Demo demo) {
		return demoDao.updateByPrimaryKeySelective(demo);
	}

	@Override
	public Integer delete(Long id) {
		return demoDao.deleteByPrimaryKey(id);
	}

}
