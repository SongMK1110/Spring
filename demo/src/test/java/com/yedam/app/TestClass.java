package com.yedam.app;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yedam.app.junit.Restaurant;

//junit 에서는 bean 못가져와서 pom.xml에 spring-test 라이브러리 추가해줘야함
@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)// 컨테이너 만들어주고 실행
public class TestClass {
	// 구현클래스 사용할 때 타입을 인터페이스 
	// @Autowired 밑에는 대체로 인터페이스
	//@Autowired 
	//ApplicationContext ctx;
	
	@Autowired
	Restaurant res;
	@Test
	public void beanTest() {
//		Restaurant res = ctx.getBean(Restaurant.class);
		assertNotNull(res);
	}
}
