package de.hablijack.bienenmonitor.form;

import org.hibernate.validator.constraints.NotEmpty;

public class SensorCreateForm {

    private Long id;

    @NotEmpty
    private String name;

    @NotEmpty
    private String unit;

    @NotEmpty
    private String iconPath;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getIconPath() {
        return iconPath;
    }

    public void setIconPath(String iconPath) {
        this.iconPath = iconPath;
    }
}
