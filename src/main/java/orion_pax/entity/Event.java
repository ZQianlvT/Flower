package orion_pax.entity;

public class Event {
    private String guid;    //日程id
    private String content;
    private String starts_at;
    private String ends_at;
    private String caleventable_guid; //项目id
    private Integer calendar_color;
    private boolean repeat_starts_at = false;

    public Event() {
    }

    public Event(String content, String starts_at, String ends_at, Integer calendar_color) {
        this.content = content;
        this.starts_at = starts_at;
        this.ends_at = ends_at;
        this.calendar_color = calendar_color;
    }

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getStarts_at() {
        return starts_at;
    }

    public void setStarts_at(String starts_at) {
        this.starts_at = starts_at;
    }

    public String getEnds_at() {
        return ends_at;
    }

    public void setEnds_at(String ends_at) {
        this.ends_at = ends_at;
    }

    public Integer getCalendar_color() {
        return calendar_color;
    }

    public void setCalendar_color(Integer calendar_color) {
        this.calendar_color = calendar_color;
    }

    public String getCaleventable_guid() {
        return caleventable_guid;
    }

    public void setCaleventable_guid(String caleventable_guid) {
        this.caleventable_guid = caleventable_guid;
    }

    public boolean isRepeat_starts_at() {
        return repeat_starts_at;
    }

    public void setRepeat_starts_at(boolean repeat_starts_at) {
        this.repeat_starts_at = repeat_starts_at;
    }


    @Override
    public String toString() {
        return "Event{" +
                "guid='" + guid + '\'' +
                ", content='" + content + '\'' +
                ", starts_at='" + starts_at + '\'' +
                ", ends_at='" + ends_at + '\'' +
                ", caleventable_guid='" + caleventable_guid + '\'' +
                ", calendar_color=" + calendar_color +
                ", repeat_starts_at=" + repeat_starts_at +
                '}';
    }
}
