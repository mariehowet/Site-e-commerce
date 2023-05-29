package com.spring.henallux.ecommerce.dataAccess.dao;

import com.spring.henallux.ecommerce.dataAccess.entity.ItemEntity;
import com.spring.henallux.ecommerce.dataAccess.entity.TranslationEntity;
import com.spring.henallux.ecommerce.dataAccess.repository.ItemRepository;
import com.spring.henallux.ecommerce.dataAccess.util.ProviderConverter;
import com.spring.henallux.ecommerce.model.Item;
import com.spring.henallux.ecommerce.model.Translation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ItemDAO implements ItemDataAccess {

    private ItemRepository itemRepository;
    private ProviderConverter providerConverter;

    @Autowired
    public ItemDAO(ItemRepository itemRepository, ProviderConverter providerConverter) {
        this.itemRepository = itemRepository;
        this.providerConverter = providerConverter;
    }

    public ArrayList<Item> getItemsByCategory(String categoryId) {
        List<ItemEntity> itemEntities = itemRepository.findAllByCategoryId(categoryId);
        ArrayList<Item> items = new ArrayList<>();
        for(ItemEntity entity : itemEntities) {
            Item item = providerConverter.itemEntityToItemModel(entity);
            items.add(item);
        }
        return items;
    }

    public Item getItemById(Integer id) {
        Optional<ItemEntity> itemEntityOptional = itemRepository.findById(id);
        if (itemEntityOptional.isPresent()) {
            ItemEntity itemEntity = itemEntityOptional.get();
            Item item = providerConverter.itemEntityToItemModel(itemEntity);
            return item;
        } else {
            return null;
        }
    }

}
