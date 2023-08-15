package com.spring.henallux.ecommerce.dataAccess;

import com.spring.henallux.ecommerce.dataAccess.dao.ItemDAO;
import com.spring.henallux.ecommerce.dataAccess.entity.ItemEntity;
import com.spring.henallux.ecommerce.dataAccess.repository.ItemRepository;
import com.spring.henallux.ecommerce.dataAccess.util.ProviderConverter;
import com.spring.henallux.ecommerce.model.Item;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Spy;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
@SpringBootTest
public class ItemDAOTest {
    private ItemDAO itemDAO;

    @Mock
    private ItemRepository itemRepository;
    @Mock
    private ProviderConverter providerConverter;

    @Before
    public void setUp() throws Exception {
        itemDAO = new ItemDAO(itemRepository, providerConverter);
    }

    @Test
    public void testItemDAO() {
        ArrayList<ItemEntity> mockedItemEntities1 = new ArrayList<>();
        ItemEntity itemEntity1 = new ItemEntity(1, "T-shirt pour homme", 9.99, "tshirt_m1.jpg", "Superdry", "L", "m", "Les Petits Riens", "tshirts");
        ItemEntity itemEntity2 = new ItemEntity(2, "Sweatshirt pour femme", 11, "sweatshirt_f1.jpg", "Nike", "M", "f", "Les Petits Riens", "sweatshirts");
        mockedItemEntities1.add(itemEntity1);
        Optional<ItemEntity> mockedItemEntities2 = Optional.of(itemEntity2);
        when(itemRepository.findAllByCategoryId("tshirts")).thenReturn(mockedItemEntities1);
        when(itemRepository.findById(2)).thenReturn(mockedItemEntities2);

        ArrayList<Item> mockedItemModels = new ArrayList<>();
        Item itemModel1 = new Item();
        itemModel1.setId(1);
        itemModel1.setLabel("T-shirt pour homme");
        itemModel1.setPrice(9.99);
        itemModel1.setPicture("tshirt_m1.jpg");
        itemModel1.setBrand("Superdry");
        itemModel1.setSize("L");
        itemModel1.setTarget("m");
        itemModel1.setThriftShop("Les Petits Riens");
        itemModel1.setCategoryId("tshirts");
        mockedItemModels.add(itemModel1);
        when(providerConverter.itemEntityToItemModel(itemEntity1)).thenReturn(itemModel1);

        Item itemModel2 = new Item();
        itemModel2.setId(2);
        itemModel2.setLabel("Sweatshirt pour femme");
        itemModel2.setPrice(11);
        itemModel2.setPicture("sweatshirt_f1.jpg");
        itemModel2.setBrand("Nike");
        itemModel2.setSize("M");
        itemModel2.setTarget("f");
        itemModel2.setThriftShop("Les Petits Riens");
        itemModel2.setCategoryId("sweatshirts");
        when(providerConverter.itemEntityToItemModel(itemEntity2)).thenReturn(itemModel2);

        // GetItemsByCategory
        assertThat(itemDAO.getItemsByCategory("tshirts")).isEqualTo(mockedItemModels);

        // GetItemsById
        assertThat(itemDAO.getItemById(2)).isEqualTo(itemModel2);
    }
}
