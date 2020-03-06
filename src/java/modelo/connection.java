/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class connection {
    
    Connection con;
    String url="jdbc:oracle:thin:@localhost:1521/xepdb1";
    String user="adm";
    String password="adm";
    
    public Connection connect(){
        
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection(url, user, password);
        } catch (Exception e){
        
        }
        return con;
    }
}
