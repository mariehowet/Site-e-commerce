package com.spring.henallux.ecommerce.dataAccess.dao;

import com.spring.henallux.ecommerce.dataAccess.entity.TranslationEntity;
import com.spring.henallux.ecommerce.dataAccess.repository.TranslationRepository;
import com.spring.henallux.ecommerce.dataAccess.util.ProviderConverter;
import com.spring.henallux.ecommerce.model.Translation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class CategoryTranslationDAO implements CategoryTranslationDataAccess {
    private TranslationRepository translationRepository;
    private ProviderConverter providerConverter;

    @Autowired
    public CategoryTranslationDAO(TranslationRepository translationRepository, ProviderConverter providerConverter) {
        this.translationRepository = translationRepository;
        this.providerConverter = providerConverter;
    }

    public ArrayList<Translation> getAllCategoriesTranslations(String language) {
        List<TranslationEntity> translationEntities = translationRepository.findAllCategoriesByLanguage(language);
        ArrayList<Translation> categories = new ArrayList<>();
        for(TranslationEntity entity : translationEntities) {
            Translation category = providerConverter.translationEntityToTranslationModel(entity);
            categories.add(category);
        }
        return categories;
    }
}
