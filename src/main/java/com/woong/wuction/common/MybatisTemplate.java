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
			// mybatis ���� ������ InputStream ��ü�� ���� �о��
			InputStream stream = Resources.getResourceAsStream(resources);
			
			// SqlSessionFactoryBuilder ��ü ����
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			
			// SqlSessionFactoryBuilder ��ü�� ����
			// SqlSessionFactory ��ü ����
			SqlSessionFactory factory = builder.build(stream);
			
			// SqlSessionFactory ��ü�� ���� SqlSession ��ü ����
			session = factory.openSession(false);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// ������ SqlSession ��ü ����
		return session;
	}
	
}
