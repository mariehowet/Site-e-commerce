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
        TranslationEntity translationEntity3 = new TranslationEntity(3, "Vestes & Manteaux", "fr", "coats");
        mockedTranslationEntities.add(translationEntity1);
        mockedTranslationEntities.add(translationEntity2);
        mockedTranslationEntities.add(translationEntity3);
        when(translationRepository.findAll()).thenReturn(mockedTranslationEntities);


        // getAllCategoriesTranslations
        /*
            ArrayList<Translation> translations = new ArrayList<>();
            Translation t1 = providerConverter.translationEntityToTranslationModel(translationEntity1);
            Translation t2 = providerConverter.translationEntityToTranslationModel(translationEntity2);
            assertThat(categoryTranslationDAO.getAllCategoriesTranslations("en")).isEqualTo(translations);
         */
    }
}
