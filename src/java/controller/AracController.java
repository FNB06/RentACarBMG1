/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import dao.AracDAO;
import entity.Arac;
import entity.Document;
import entity.Firma;
import java.io.Serializable;
import java.util.List;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

/**
 *
 * @author Tevhid
 */
@Named
@SessionScoped
public class  AracController implements Serializable{
     private List<Arac> clist;
    private AracDAO adao;
    private FirmaDAO firmaDAO;
    private List<Firma> firmaList;
    private DocumentDao documentDao;
    private List<Document> dlist;

    public AracController() {
    }
     private Arac arac;

     public void updateForm(Arac arac) {
        this.arac = arac;
    }

    public void clearForm() {
        this.arac = new Arac();
    }

    public String index() {
        clearForm();
        return "index";
    }

    public void deleteConfirm(Arac arac) {
        this.arac = arac;
    }
    
    public void delete() {
        this.getAdao().delete(this.arac);
        this.arac = new Arac();
        this.clearForm();
    }

    public void modify() {
        this.getAdao().update(this.arac);
        this.clearForm();
    }

    public void create() {
        this.getAdao().create(this.arac);
        clearForm();
    }
    public List<Arac> getClist() {
        return clist;
    }

    public void setClist(List<Arac> clist) {
        this.clist = clist;
    }

    public AracDAO getAdao() {
        return adao;
    }

    public void setAdao(AracDAO adao) {
        this.adao = adao;
    }

    public FirmaDAO getFirmaDAO() {
        return firmaDAO;
    }

    public void setFirmaDAO(FirmaDAO firmaDAO) {
        this.firmaDAO = firmaDAO;
    }

    public List<Firma> getFirmaList() {
        return firmaList;
    }

    public void setFirmaList(List<Firma> firmaList) {
        this.firmaList = firmaList;
    }

    public DocumentDao getDocumentDao() {
        return documentDao;
    }

    public void setDocumentDao(DocumentDao documentDao) {
        this.documentDao = documentDao;
    }

    public List<Document> getDlist() {
        return dlist;
    }

    public void setDlist(List<Document> dlist) {
        this.dlist = dlist;
    }
    
}
