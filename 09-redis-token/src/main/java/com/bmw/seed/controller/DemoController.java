package com.bmw.seed.controller;

import com.bmw.seed.model.Demo;
import com.bmw.seed.service.DemoService;
import com.bmw.seed.util.bean.BaseResponse;
import com.bmw.seed.util.bean.PageReq;
import com.bmw.seed.util.bean.PageResp;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequestMapping(value = "/demo")
@Slf4j
public class DemoController {

	@Autowired
	DemoService demoService;


	/**
	 * 新增
	 */
	@RequestMapping(value = "/save")
	public void save(@RequestBody Demo demo) {
		demoService.save(demo);
	}

	/**
	 * 修改
	 */
	@RequestMapping(value = "/update")
	public void update(@RequestBody Demo demo) {
		demoService.update(demo);
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete")
	public void delete(@RequestBody Long id) {
		demoService.delete(id);
	}

	/**
	 * 分页 demo
	 */
	@RequestMapping(value = "/page")
	public BaseResponse<PageResp<Demo>> page(@Valid @RequestBody PageReq req) {
		return BaseResponse.OK(demoService.page(req));
	}

}
