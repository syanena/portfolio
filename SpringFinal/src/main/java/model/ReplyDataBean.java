package model;

public class ReplyDataBean {
    String id;
    String reply_number;
    String reply_subject;
    String reply_content;
    String reply_regdate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getReply_number() {
        return reply_number;
    }

    public void setReply_number(String reply_number) {
        this.reply_number = reply_number;
    }

    public String getReply_subject() {
        return reply_subject;
    }

    public void setReply_subject(String reply_subject) {
        this.reply_subject = reply_subject;
    }

    public String getReply_content() {
        return reply_content;
    }

    public void setReply_content(String reply_content) {
        this.reply_content = reply_content;
    }

    public String getReply_regdate() {
        return reply_regdate;
    }

    public void setReply_regdate(String reply_regdate) {
        this.reply_regdate = reply_regdate;
    }

    @Override
    public String toString() {
        return "ReplyDataBean{" +
                "id='" + id + '\'' +
                ", reply_number='" + reply_number + '\'' +
                ", reply_subject='" + reply_subject + '\'' +
                ", reply_content='" + reply_content + '\'' +
                ", reply_regdate='" + reply_regdate + '\'' +
                '}';
    }
}
