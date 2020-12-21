package com.souvenironline.entity;

import javax.persistence.Entity;
import java.io.Serializable;

@Entity
public class Report extends BaseEntity {

    Serializable group;
    Double sum;
    Long count;
    Double min;
    Double max;
    Double avg;
    public Report(Serializable group, Double sum, Long count, Double min, Double max, Double avg) {
        super();
        this.group = group;
        this.sum = sum;
        this.count = count;
        this.min = min;
        this.max = max;
        this.avg = avg;
    }
    public Report() {
        super();
    }
}
