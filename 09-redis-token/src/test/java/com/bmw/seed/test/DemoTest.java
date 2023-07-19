package com.bmw.search.test;

import com.bmw.seed.SeedApplication;
import com.bmw.seed.service.DemoService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = SeedApplication.class)
@Slf4j
public class DemoTest {

	@Autowired
	private DemoService demoService;

	@Test
	public void test() {
	}
}
