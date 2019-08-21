package site.suimu.pojo;

public class ChenUser {
    private String phone, nickname, location, birth, email, sex;
    private int level;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "ChenUser{" +
                "phone='" + phone + '\'' +
                ", nickname='" + nickname + '\'' +
                ", location='" + location + '\'' +
                ", birth='" + birth + '\'' +
                ", email='" + email + '\'' +
                ", sex='" + sex + '\'' +
                ", level=" + level +
                '}';
    }
}
