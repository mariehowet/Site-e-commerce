package com.spring.henallux.ecommerce.service;

import com.spring.henallux.ecommerce.model.Item;
import com.spring.henallux.ecommerce.model.OrderRow;
import org.junit.Assert;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import java.util.HashMap;

public class BasketServiceTest {
    private BasketService basketService;

    @BeforeEach
    public void setUp() {
        basketService = new BasketService();
    }

    @Test
    public void loadNbItems() throws Exception {
        Assert.assertEquals(3, basketService.loadNbItems(new HashMap<Integer, OrderRow>() {{
            put(1, new OrderRow(1, 10.0, new Item()));
            put(2, new OrderRow(2, 15.0, new Item()));
        }}));

        Assert.assertEquals(1, basketService.loadNbItems(new HashMap<Integer, OrderRow>() {{
            put(1, new OrderRow(1, 10.0, new Item()));
        }}));

        Assert.assertNotEquals(4, basketService.loadNbItems(new HashMap<Integer, OrderRow>() {{
            put(1, new OrderRow(3, 10.0, new Item()));
            put(2, new OrderRow(2, 15.0, new Item()));
        }}));
    }

    @Test
    public void loadSubtotal() throws Exception {
        Assert.assertEquals(30.0, basketService.loadSubtotal(new HashMap<Integer, OrderRow>() {{
            put(1, new OrderRow(3, 30.0, new Item()));
        }}), 0.1);

        Assert.assertEquals(45.0, basketService.loadSubtotal(new HashMap<Integer, OrderRow>() {{
            put(1, new OrderRow(3, 30.0, new Item()));
            put(2, new OrderRow(1, 15.0, new Item()));
        }}), 0.1);

        Assert.assertNotEquals(21.0, basketService.loadSubtotal(new HashMap<Integer, OrderRow>() {{
            put(1, new OrderRow(2, 14.0, new Item()));
            put(2, new OrderRow(2, 8.0, new Item()));
        }}), 0.1);
    }

    @Test
    public void loadDiscount() {
        Item item1 = new Item();
        Item item2 = new Item();

        item1.setPrice(10.0);
        item2.setPrice(15.0);

        Assert.assertEquals(10.0, basketService.loadDiscount(new HashMap<Integer, OrderRow>() {{
            put(1, new OrderRow(3, 30.0, item1));
            put(2, new OrderRow(1, 15.0, item2));
        }}), 0.1);

        Assert.assertEquals(0.0, basketService.loadDiscount(new HashMap<Integer, OrderRow>() {{
            put(1, new OrderRow(2, 20.0, item1));
        }}), 0.1);

        Assert.assertNotEquals(0.0, basketService.loadDiscount(new HashMap<Integer, OrderRow>() {{
            put(1, new OrderRow(3, 30.0, item1));
        }}), 0.1);
    }
}