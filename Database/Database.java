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
public class Database {
    private Connection conn;
    public Database() throws ClassNotFoundException, SQLException {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donation?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
    }
    
        public void addCustomer(String bloodGroup,String email,String phnNum,String HAdress){
        try {
            String sql="INSERT into customer(bloodGroup,email,phnNum,HAdress) "
                    + "Values(?,?,?,?)";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,bloodGroup );
            pstm.setString(2,email );
            pstm.setString(3,phnNum );
            pstm.setString(4,HAdress);
            pstm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
       
}
