package ru.javastudy.SpringStudy.mvc.bean;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Getter
@Setter
@Component(value = "sampleBean")
public class SampleBean {
    private String stringValue;
    private int number;

    @PostConstruct
    public void init() {
        stringValue = "postConstructValue";
        number = 666;
    }
}
