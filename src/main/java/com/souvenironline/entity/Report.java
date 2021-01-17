package com.souvenironline.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Report  {

    @Id
    Serializable group;
    Double sum;
    Long count;
    Double min;
    Double max;
    Double avg;
}
