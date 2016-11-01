package de.hablijack.bienenmonitor.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "hive")
@Data
public class Hive {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, updatable = false)
    private Long id;

    @Column(name = "position")
    private String position;

    @Column(name = "assembly_date")
    private Date assemblyDate;

    @Column(name = "comb_count", nullable = false)
    private int combCount;

    @Column(name = "comb_per_box", nullable = false)
    private int combPerBox;

    @Column(name = "type", nullable = false)
    private String type;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "color", nullable = false)
    private String color;

    public int getBoxCount() {
        return combCount / combPerBox;
    }
}
