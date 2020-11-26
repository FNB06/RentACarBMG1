/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.HasarKaydi;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Tevhid
 */
public class HasarKaydiDAO extends Dao {
     private AracDAO aracDAO;

    @Override
    public void create(Object obj) {
         HasarKaydi hasarKaydi = (HasarKaydi) obj;
        String q = "insert into hasarkaydi(aracid,boya,cizik,degisim,aciklama) values (?,?,?,?,?)";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setLong(1, hasarKaydi.getArac().getAracid());
            st.setString(2, hasarKaydi.getBoya());
            st.setString(3, hasarKaydi.getCizik());
            st.setString(4, hasarKaydi.getDegisim());
            st.setString(5, hasarKaydi.getAciklama());

            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public void update(Object obj) {
        HasarKaydi hasarKaydi = (HasarKaydi) obj;
        String q = "update hasarkaydi set aracid=?,boya=?,cizik=?,degisim=?,aciklama=? where hasarid = ?";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setLong(1, hasarKaydi.getArac().getAracid());
            st.setString(2, hasarKaydi.getBoya());
            st.setString(3, hasarKaydi.getCizik());
            st.setString(4, hasarKaydi.getDegisim());
            st.setString(5, hasarKaydi.getAciklama());
            st.setLong(6, hasarKaydi.getHasarid());

            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }    }

    @Override
    public void delete(Object obj) {
        HasarKaydi hasarKaydi = (HasarKaydi) obj;
        String q = "delete from hasarkaydi where hasarid = ?";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setLong(1, hasarKaydi.getHasarid());
            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }    }

    public AracDAO getAracDAO() {
         if (aracDAO == null) {
            aracDAO = new AracDAO();
        }
        return aracDAO;
    }
    
}
