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
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;

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
        ArrayList<ItemEntity> mockedItemEntities = new ArrayList<>();
        ItemEntity itemEntity1 = new ItemEntity(1, "T-shirt pour homme", 9.99, "tshirt_m1.jpg", "Superdry", "L", "m", "Les Petits Riens", "tshirts");
        ItemEntity itemEntity2 = new ItemEntity(2, "Sweatshirt pour femme", 11, "sweatshirt_f1.jpg", "Nike", "M", "f", "Les Petits Riens", "sweatshirts");
        ItemEntity itemEntity3 = new ItemEntity(3, "Pantalon pour enfant", 12, "trousers_c1.jpg", "Petit Bateau", "150", "c", "Besap", "trousers");
        mockedItemEntities.add(itemEntity1);
        mockedItemEntities.add(itemEntity2);
        mockedItemEntities.add(itemEntity3);
        when(itemRepository.findAll()).thenReturn(mockedItemEntities);

        // GetItemsByCategory
        //ArrayList<Item> items = new ArrayList<>();
        //items.add(providerConverter.itemEntityToItemModel(itemEntity1));
        //assertThat(itemDAO.getItemsByCategory("tshirts")).isEqualTo(items);
        System.out.println(itemDAO.getItemsByCategory("tshirts").size());

        // GetItemsById
        //Item item = providerConverter.itemEntityToItemModel(itemEntity2);
        //assertThat(itemDAO.getItemById(item2.getId())).isEqualTo(item);
    }
}
