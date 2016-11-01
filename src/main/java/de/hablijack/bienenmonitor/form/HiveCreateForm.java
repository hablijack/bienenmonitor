package de.hablijack.bienenmonitor.form;

import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

public class HiveCreateForm {

    private Long id;

    @NotEmpty
    private String position;

    @DateTimeFormat(pattern = "dd.MM.yyyy")
    private Date assemblyDate;

    @NotNull
    private Integer combCount;

    @NotNull
    private Integer combPerBox;

    @NotEmpty
    private String type;

    @NotEmpty
    private String name;

    @NotEmpty
    private String color;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Date getAssemblyDate() {
        return assemblyDate;
    }

    public void setAssemblyDate(Date assemblyDate) {
        this.assemblyDate = assemblyDate;
    }

    public Integer getCombCount() {
        return combCount;
    }

    public void setCombCount(Integer combCount) {
        this.combCount = combCount;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Integer getCombPerBox() {
        return combPerBox;
    }

    public void setCombPerBox(Integer combPerBox) {
        this.combPerBox = combPerBox;
    }
}
