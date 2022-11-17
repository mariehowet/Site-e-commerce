package com.spring.henallux.ecommerce.service;

import com.spring.henallux.ecommerce.model.Customer;
import org.springframework.stereotype.Service;

import javax.xml.crypto.Data;
import java.time.DayOfWeek;
import java.time.Year;
import java.util.ArrayList;

@Service
public class DateService {
    private ArrayList<DayOfWeek> days = new ArrayList<>();

    public DateService() {
    }
}
