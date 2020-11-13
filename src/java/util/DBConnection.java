/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Tevhid
 */
public  class  DBConnection {
     private DBConnection(){
        
    }
    private static DBConnection db;

    public static DBConnection getDb() {
        if(db ==  null){
            db = new DBConnection();
        }
        return db;
    }

         
    private Connection connection;
    public Connection getConnection(){
        try{
             Class.forName("org.postgresql.Driver").newInstance();
            this.connection= DriverManager.getConnection("jdbc:postgresql://localhost:5432/RentACarBMG", "postgres", "4486");
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
    return this.connection;
    } 
    
}
