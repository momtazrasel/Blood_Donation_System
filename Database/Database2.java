/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.myblooddonatsystem;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Afsana
 */
public class Database2 {
    private Connection conn;
    public Database2() throws ClassNotFoundException, SQLException {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donation?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
    }
     
        public int addlogin(String email,String pass){
            int r=0;
            try {

                String sql01="INSERT into login(email,pass) "
                        + "Values(?,?)";

                PreparedStatement pstm=conn.prepareStatement(sql01);
                PreparedStatement pstm1 = conn.prepareStatement("Select email,pass from createaccount where email=? and pass=?");

                pstm.setString(1,email);
                pstm.setString(2,pass);

                pstm1.setString(1,email);
                pstm1.setString(2,pass);

                ResultSet rs = pstm1.executeQuery();                        
            if(rs.next()){
                pstm.executeUpdate();
                r=1;
                }           

            } catch (SQLException ex) {
                Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
}