/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Arac;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Tevhid
 */
public class AracDAO extends Dao{

    @Override
    public void create(Object obj) {
        Arac arac = (Arac) obj;
        String q = "insert into arac(plaka,marka,model,motor,yil,kilometre,yakit,vites,firmaid,fiyat,document_id) values (?,?,?,?,?,?,?,?,?,?,?)";
        try{
             PreparedStatement st = getConn().prepareStatement(q);
            st.setString(1, arac.getPlaka());
            st.setString(2, arac.getMarka());
            st.setString(3, arac.getModel());
            st.setDouble(4, arac.getMotor());
            st.setInt(5, arac.getYil());
            st.setInt(6, arac.getKilometre());
            st.setString(7, arac.getYakit());
            st.setString(8, arac.getVites());
            st.setLong(9, arac.getFirma().getFirmaid());
            st.setInt(10, arac.getFiyat());
            st.setLong(11, arac.getDocument().getId());

            st.executeUpdate();
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public void update(Object obj) {
        Arac arac = (Arac) obj;
        String q = "update arac set plaka=?,marka=?,model=?,motor=?,yil=?,kilometre=?,yakit=?,vites=?,firmaid=?,fiyat=?,document_id=? where aracid = ?";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setString(1, arac.getPlaka());
            st.setString(2, arac.getMarka());
            st.setString(3, arac.getModel());
            st.setDouble(4, arac.getMotor());
            st.setInt(5, arac.getYil());
            st.setInt(6, arac.getKilometre());
            st.setString(7, arac.getYakit());
            st.setString(8, arac.getVites());
            st.setLong(9, arac.getFirma().getFirmaid());
            st.setInt(10, arac.getFiyat());
            st.setLong(11, arac.getDocument().getId());
            st.setLong(12, arac.getAracid());
            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public void delete(Object obj) {
        Arac arac = (Arac) obj;
        String q = "delete from arac where aracid = ?";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setLong(1, arac.getAracid());
            st.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
}
