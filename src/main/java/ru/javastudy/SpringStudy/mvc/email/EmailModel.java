package ru.javastudy.SpringStudy.mvc.email;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class EmailModel {
    private String name;
    private String email;
    private String password;
    private String message;

    @Override
    public String toString() {
        return "EmailModel{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
