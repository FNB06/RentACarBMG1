/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Tevhid
 */
public class Grup {
     private Long grupid;
    private String grupadi;

    public Grup() {
    }

    public Long getGrupid() {
        return grupid;
    }

    public void setGrupid(Long grupid) {
        this.grupid = grupid;
    }

    public String getGrupadi() {
        return grupadi;
    }

    public void setGrupadi(String grupadi) {
        this.grupadi = grupadi;
    }

    @Override
    public String toString() {
        return "Grup{" + "grupid=" + grupid + ", grupadi=" + grupadi + '}';
    }
    
    
}
