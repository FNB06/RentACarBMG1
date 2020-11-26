/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Sehir;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Tevhid
 */
public class SehirDAO extends Dao {

    @Override
    public void create(Object obj) {
 Sehir sehir = (Sehir) obj;
        String q = "insert into sehir(adi) values (?)";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setString(1, sehir.getAdi());

            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }    }

    @Override
    public void update(Object obj) {
         Sehir sehir = (Sehir) obj;
        String q = "update sehir set adi=? where sehir_id = ?";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setString(1, sehir.getAdi());
            st.setLong(2, sehir.getSehir_id());

            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public void delete(Object obj) {
        Sehir sehir = (Sehir) obj;
        String q = "delete from sehir where sehir_id = ?";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setLong(1, sehir.getSehir_id());
            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
}
