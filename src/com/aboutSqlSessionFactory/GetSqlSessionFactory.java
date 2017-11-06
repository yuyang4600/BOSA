package com.aboutSqlSessionFactory;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class GetSqlSessionFactory {
    public static SqlSessionFactory sqlSessionFactory = null;
    public static SqlSessionFactory getSqlSessionFactory() {
        
        if(sqlSessionFactory==null){
            String resource = "SqlMapConfig.xml";
            try {
                Reader reader = Resources.getResourceAsReader(resource);
                sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return sqlSessionFactory;
    }
}

