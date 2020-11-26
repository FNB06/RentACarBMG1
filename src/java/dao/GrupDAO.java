/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Grup;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Tevhid
 */
public class GrupDAO extends Dao {

    @Override
    public void create(Object obj) {
        Grup grup = (Grup) obj;
        String q = "insert into grup(grupadi) values (?)";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setString(1, grup.getGrupadi());

            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public void update(Object obj) {
       Grup grup = (Grup) obj;
        String q = "update grup set grupadi=? where grupid = ?";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setString(1, grup.getGrupadi());
            st.setLong(2, grup.getGrupid());

            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public void delete(Object obj) {
        Grup grup = (Grup) obj;
        String q = "delete from grup where grupid = ?";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setLong(1, grup.getGrupid());
            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
}
