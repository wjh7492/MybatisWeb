package kr.co.gdu;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBCon {
	SqlSessionFactory sqlSessionFactory;

	public DBCon() throws IOException {
		String resource = "kr/co/gdu/mybatis-config.xml";
		// File Load (물리적 파일을 Byte
		InputStream inputStream = Resources.getResourceAsStream(resource);
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}
	
	public SqlSessionFactory getCon() {
		return sqlSessionFactory;
	}
}
