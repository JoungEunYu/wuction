package com.woong.wuction.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisTemplate {
	
	public static SqlSession getSqlSession() {
		SqlSession session = null;
		
		String resources = "/mybatis-config.xml";
		
		try {
			// mybatis 설정 정보를 InputStream 객체를 통해 읽어옴
			InputStream stream = Resources.getResourceAsStream(resources);
			
			// SqlSessionFactoryBuilder 객체 생성
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			
			// SqlSessionFactoryBuilder 객체를 통해
			// SqlSessionFactory 객체 생성
			SqlSessionFactory factory = builder.build(stream);
			
			// SqlSessionFactory 겍체를 통해 SqlSession 객체 생성
			session = factory.openSession(false);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 생성된 SqlSession 객체 리턴
		return session;
	}
	
}
