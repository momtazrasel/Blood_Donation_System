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
public class Database3 {
    private Connection conn;
    public Database3() throws ClassNotFoundException, SQLException {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donation?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
    }
    
        public void addsign(String first_name,String surname,String blood_group,String email,String phone,String pass, String con_pass, String calendar,String address){
        try {
            String sql02="INSERT into createaccount(first_name,surname,blood_group,email,phone,pass,con_pass,calendar,address) "
                    + "Values(?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement pstm=conn.prepareStatement(sql02);
            pstm.setString(1,first_name );
            pstm.setString(2,surname );
            pstm.setString(3,blood_group );
            pstm.setString(4,email );
            pstm.setString(5,phone );
            pstm.setString(6,pass );
            pstm.setString(7,con_pass);
            pstm.setString(8,calendar );
            pstm.setString(9,address );
            pstm.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}