package com.company.dao.inter;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public abstract class AbstractDAO {

    public Connection connect() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        com.mysql.jdbc.Driver s;
        String url = "jdbc:mysql://localhost:3306/resume";
        String username = "adil";
        String password = "adilyes1247";
        Connection c = DriverManager.getConnection(url, username, password);

        return c;
    }
    
    private static EntityManagerFactory emf = null;
    
    public EntityManager em(){
        if(emf == null){
           emf = Persistence.createEntityManagerFactory("resumeappPU");
        }
        EntityManager entitymanager = emf.createEntityManager();
        return entitymanager;
    }
    
    public void closeEmf(){       
        emf.close();
    }

}
