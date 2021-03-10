/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.myblooddonatsystem;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Afsana
 */
public class updatejava {
    private Connection conn;
    public updatejava() throws ClassNotFoundException, SQLException {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donation?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
    }
    
        public int addupdate(String email,String phone,String address,String lastdate){
            int e=0;
            
        try {
            
//            HttpSession session1 = request.getSession(true);
//            String emaildata = (String) session1.getAttribute("profemail");
            
            String emaildata = email;
            String phonedata = phone;
            String addressdata = address;
            String lastdatedata = lastdate;
            
            String sqlupdate="UPDATE createaccount SET phone=?, address=?, lastdate=? WHERE email='"+emaildata+"' ";
            
            PreparedStatement pstm=conn.prepareStatement(sqlupdate);
            pstm.setString(1,phone );
            pstm.setString(2,address );
            pstm.setString(3,lastdate );
//            pstm.setString(4, email);
           
            pstm.executeUpdate();
            e=1;
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return e;
    }
       
}

