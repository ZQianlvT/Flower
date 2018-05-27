package orion_pax.entity;

import java.util.List;

public class Board {
    private String id;

    private Integer index;

    private String name;

    private Integer unfinished;

    private String pId;

    private List<Task> taskList;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Integer getIndex() {
        return index;
    }

    public void setIndex(Integer index) {
        this.index = index;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getUnfinished() {
        return unfinished;
    }

    public void setUnfinished(Integer unfinished) {
        this.unfinished = unfinished;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId == null ? null : pId.trim();
    }

    public List<Task> getTaskList() {
        return taskList;
    }

    public void setTaskList(List<Task> taskList) {
        this.taskList = taskList;
    }
}