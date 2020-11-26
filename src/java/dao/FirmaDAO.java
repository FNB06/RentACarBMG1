/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import entity.Firma;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 *
 * @author Tevhid
 */
public class FirmaDAO extends Dao {
    private SehirDAO sehirDAO;

    

    @Override
    public void create(Object obj) {
         Firma firma = (Firma) obj;
        String q = "insert into firma(adi,telefon,email,adres) values (?,?,?,?)";
        try{
            PreparedStatement st = getConn().prepareStatement(q);
            st.setString(1, firma.getAdi());
            st.setString(2, firma.getTelefon());
            st.setString(3, firma.getEmail());
            st.setString(4, firma.getAdres());
            st.executeUpdate();
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public void update(Object obj) {
        Firma firma = (Firma) obj;
        String q = "update firma set adi=?,telefon=?,email=?,adres=? where firmaid = ?";
        try {
            PreparedStatement st = getConn().prepareStatement(q);
            st.setString(1, firma.getAdi());
            st.setString(2, firma.getTelefon());
            st.setString(3, firma.getEmail());
            st.setString(4, firma.getAdres());
            st.setLong(5, firma.getFirmaid());
            st.executeUpdate();
            

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public void delete(Object obj) {
         Firma firma = (Firma) obj;

        String q = "delete from firma where firmaid = ?";
        try {
            PreparedStatement st = this.getConn().prepareStatement(q);
            st.setLong(1, firma.getFirmaid());
            st.executeUpdate();
            

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
    
    
    
    public SehirDAO getSehirDAO() {
        if(this.sehirDAO == null){
            sehirDAO = new SehirDAO();
        }
        return sehirDAO;
    }
}
