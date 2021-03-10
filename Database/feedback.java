/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.myblooddonatsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Afsana
 */
public class feedback {
    private Connection conn;
    public feedback() throws ClassNotFoundException, SQLException {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donation?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
    }
    
        public void addFeedback(String email,String name,String subject,String message){
        try {
            String feedbacksql="INSERT into feedback(email,name,subject,message) "
                    + "Values(?,?,?,?)";
            
            PreparedStatement pstm=conn.prepareStatement(feedbacksql);
            pstm.setString(1,email );
            pstm.setString(2,name );
            pstm.setString(3,subject );
            pstm.setString(4,message);
            pstm.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
       
}
