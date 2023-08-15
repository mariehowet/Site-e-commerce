package com.spring.henallux.ecommerce.dataAccess;

import com.spring.henallux.ecommerce.dataAccess.dao.CategoryTranslationDAO;
import com.spring.henallux.ecommerce.dataAccess.entity.TranslationEntity;
import com.spring.henallux.ecommerce.dataAccess.repository.TranslationRepository;
import com.spring.henallux.ecommerce.dataAccess.util.ProviderConverter;
import com.spring.henallux.ecommerce.model.Translation;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
@SpringBootTest
public class CategoryTranslationDAOTest {
    private CategoryTranslationDAO categoryTranslationDAO;

    @Mock
    private TranslationRepository translationRepository;
    @Mock
    private ProviderConverter providerConverter;

    @Before
    public void setUp() throws Exception {
        categoryTranslationDAO = new CategoryTranslationDAO(translationRepository, providerConverter);
    }

    @Test
    public void testCategoryTranslationDAO() {
        ArrayList<TranslationEntity> mockedTranslationEntities = new ArrayList<>();
        TranslationEntity translationEntity1 = new TranslationEntity(1, "Coats & Jackets", "en", "coats");
        TranslationEntity translationEntity2 = new TranslationEntity(2, "Trousers", "en", "trousers");
        mockedTranslationEntities.add(translationEntity1);
        mockedTranslationEntities.add(translationEntity2);
        when(translationRepository.findAllCategoriesByLanguage("en")).thenReturn(mockedTranslationEntities);
        
        ArrayList<Translation> translations = new ArrayList<>();
        Translation translationModel1 = new Translation();
        translationModel1.setId(1);
        translationModel1.setName("Coats & Jackets");
        translationModel1.setLanguageId("en");
        translationModel1.setCategoryId("coats");
        translations.add(translationModel1);
        when(providerConverter.translationEntityToTranslationModel(translationEntity1)).thenReturn(translationModel1);
        Translation translationModel2 = new Translation();
        translationModel2.setId(2);
        translationModel2.setName("Trousers");
        translationModel2.setLanguageId("en");
        translationModel2.setCategoryId("coats");
        translations.add(translationModel2);
        when(providerConverter.translationEntityToTranslationModel(translationEntity2)).thenReturn(translationModel2);

        // getAllCategoriesTranslations
        assertThat(categoryTranslationDAO.getAllCategoriesTranslations("en")).isEqualTo(translations);
    }
}
