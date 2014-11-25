package com.axa.bi.dataimport.model;

import com.axa.bi.dataimport.transformation.Transformation;

public class HiveField {

    private Integer index;
    private String name;
    private String type;
    private Transformation transformation;
    private String comment;

    private HiveField() {
    }

    public HiveField(Integer index, String name, String type, Transformation transformation, String comment) {
        this.index = index;
        this.name = name;
        this.type = type;
        this.transformation = transformation;
        this.comment = comment;
    }

    public Integer getIndex() {
        return index;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public Transformation getTransformation() {
        return transformation;
    }

    public String getComment() {
        return comment;
    }

    @Override
    public String toString() {
        return "HiveField{" +
                "index=" + index +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", transformation=" + transformation +
                ", comment='" + comment + '\'' +
                '}';
    }
}
