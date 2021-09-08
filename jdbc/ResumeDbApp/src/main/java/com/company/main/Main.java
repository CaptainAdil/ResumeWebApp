package com.company.main;

import com.company.dao.inter.EmploymentHistoryDaoInter;

public class Main {
    
    public static void main(String[] args) throws Exception{

        EmploymentHistoryDaoInter dao = Context.instanceEmploymentHistoryDao();
        
        System.out.println(dao.getAllEmploymentHistoryByUserId(7));
    }
}
