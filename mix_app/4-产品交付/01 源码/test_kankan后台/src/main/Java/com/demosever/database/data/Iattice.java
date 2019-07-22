package com.demosever.database.data;

import java.io.Serializable;

/**
 *个人中心主界面
 * @Author Theacher
 * @CreateTime 2019年06月25日14:38:04
 * @Version 1.0.0
 */
public class Iattice implements Serializable {

    private String latticeimg;  //图标
    private String latticewrt;  //名字
    private String latticelink; //路径
    public String getLatticeimg() {
        return latticeimg;
    }

    public void setLatticeimg(String latticeimg) {
        this.latticeimg = latticeimg;
    }

    public String getLatticewrt() {
        return latticewrt;
    }

    public void setLatticewrt(String latticewrt) {
        this.latticewrt = latticewrt;
    }

    public String getLatticelink() {
        return latticelink;
    }

    public void setLatticelink(String latticelink) {
        this.latticelink = latticelink;
    }
}
