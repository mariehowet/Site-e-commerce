package com.spring.henallux.ecommerce.dataAccess.entity;

import javax.persistence.*;

@Entity
@Table(name="translation")
public class TranslationEntity {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private Integer id;

    @Column(name="name")
    private String name;

    @Column(name="language_id")
    private String languageId;

    @Column(name="category_id")
    private String categoryId;

    public TranslationEntity() {
    }
    
    public TranslationEntity(Integer id, String name, String languageId, String categoryId) {
        setId(id);
        setName(name);
        setLanguageId(languageId);
        setCategoryId(categoryId);
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLanguageId() {
        return languageId;
    }

    public void setLanguageId(String languageId) {
        this.languageId = languageId;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }
}
