package orion_pax.entity;

import java.util.Date;

public class Team {
    private String id;

    private String name;

    private Date createtime;

    private Integer totalmembers;

    private String invitelink;

    private String uId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getTotalmembers() {
        return totalmembers;
    }

    public void setTotalmembers(Integer totalmembers) {
        this.totalmembers = totalmembers;
    }

    public String getInvitelink() {
        return invitelink;
    }

    public void setInvitelink(String invitelink) {
        this.invitelink = invitelink == null ? null : invitelink.trim();
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId == null ? null : uId.trim();
    }
}