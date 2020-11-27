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

         
    
    
}
