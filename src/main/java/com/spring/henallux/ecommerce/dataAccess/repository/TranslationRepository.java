package com.spring.henallux.ecommerce.dataAccess.repository;

import com.spring.henallux.ecommerce.dataAccess.entity.TranslationEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface TranslationRepository extends JpaRepository<TranslationEntity, Integer> {
    @Query("select translation from TranslationEntity translation where translation.languageId = ?1")
    List<TranslationEntity> findAllCategoriesByLanguage(String language);
}
