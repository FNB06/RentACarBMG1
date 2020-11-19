/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Kullanici;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 *
 * @author Tevhid
 */
public class KullaniciDAO  extends Dao{

    @Override
    public void create(Object obj) {
        Kullanici kullanici = (Kullanici) obj;
        String q = "insert into kullanici(email,kullaniciadi,sifre,grupid,telefon,adres) values (?,?,?,?,?,?)";
        try {
            PreparedStatement st = this.getConn().prepareStatement(q);
            st.setString(1, kullanici.getEmail());
            st.setString(2, kullanici.getKullaniciadi());
            st.setString(3, kullanici.getSifre());
        } catch (SQLException ex) {
           System.out.println(ex.getMessage());
        }
    }

    @Override
    public void update(Object obj) {
         Kullanici kullanici = (Kullanici) obj;
        String q = "update kullanici set email=?,kullaniciadi=?,sifre=?,grupid=?,telefon=?,adres=? where kullaniciid = ?";
        try {
            PreparedStatement st = this.getConn().prepareStatement(q);
            st.setString(1, kullanici.getEmail());
            st.setString(2, kullanici.getKullaniciadi());
            st.setString(3, kullanici.getSifre());
            st.setLong(4, kullanici.getGrup().getGrupid());
            st.setString(5, kullanici.getTelefon());
            st.setString(6, kullanici.getAdres());
            st.setLong(7, kullanici.getKullaniciid());

            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public void delete(Object obj) {
        Kullanici kullanici = (Kullanici) obj;
        String q = "delete from kullanici where kullaniciid = ?";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setLong(1, kullanici.getKullaniciid());
            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
}
