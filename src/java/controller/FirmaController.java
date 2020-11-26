/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.FirmaDAO;
import entity.Firma;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author Tevhid
 */
public class FirmaController implements Serializable {
    private List<Firma> clist;
    private FirmaDAO firmaDAO;

    public FirmaController() {
    }
    private Firma firma;
     public void updateForm(Firma firma) {
        this.firma = firma;//Guncellemek istedigimiz nesneyi firmacontroller bean nin firma nesnesine atama islemini yaptik.
    }

    public void clearForm() {
        this.firma = new Firma();
    }

    public String index() {
        clearForm();
        return "index";
    }

    public void deleteConfirm(Firma firma) {
        this.firma = firma;
    }

    public void delete() {
        this.getFirmaDAO().delete(this.firma);
        clearForm();
    }

    public void modify() {
        this.getFirmaDAO().update(this.firma);
        clearForm();
    }

    public void create() {
        this.getFirmaDAO().create(this.firma);
        clearForm();
    }

    public List<Firma> getClist() {
        return clist;
    }

    public void setClist(List<Firma> clist) {
        this.clist = clist;
    }

    public FirmaDAO getFirmaDAO() {
        return firmaDAO;
    }

    public void setFirmaDAO(FirmaDAO firmaDAO) {
        this.firmaDAO = firmaDAO;
    }
    
    
}
