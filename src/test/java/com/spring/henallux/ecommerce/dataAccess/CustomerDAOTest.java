package com.spring.henallux.ecommerce.dataAccess;

import com.spring.henallux.ecommerce.dataAccess.dao.CustomerDAO;
import com.spring.henallux.ecommerce.dataAccess.entity.CustomerEntity;
import com.spring.henallux.ecommerce.dataAccess.repository.CustomerRepository;
import com.spring.henallux.ecommerce.dataAccess.util.ProviderConverter;
import com.spring.henallux.ecommerce.model.Customer;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.Date;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
@SpringBootTest
public class CustomerDAOTest {
    private CustomerDAO customerDAO;

    @Mock
    private CustomerRepository customerRepository;
    @Mock
    private ProviderConverter providerConverter;

    @Before
    public void setUp() throws Exception {
        customerDAO = new CustomerDAO(customerRepository, providerConverter);
    }

    @Test
    public void testCustomerDAO() {
        ArrayList<CustomerEntity> mockedCustomerEntities = new ArrayList<>();
        CustomerEntity customerEntity1 = new CustomerEntity("juju", "etu47233@henallux.be", "$2a$10$vCrL/M1Ihp9fHFKtx/GpjeBc9lPLtWmiWDTmv0lGE8ZReCiqyICOW", "Julien", "Hanquet", "Rue de la chocolaterie 58, 5000 Namur", "0499999999", new Date(1999, 7, 17), "ROLE_USER", true, true, true, true);
        CustomerEntity customerEntity2 = new CustomerEntity("mama", "etu47124@henallux.be", "$2a$10$vCrL/M1Ihp9fHFKtx/GpjeBc9lPLtWmiWDTmv0lGE8ZReCiqyICOW", "Marie", "Howet", "sais pas", "sais pas", new Date(2000, 7, 25), "ROLE_USER", true, true, true, true);
        mockedCustomerEntities.add(customerEntity1);
        mockedCustomerEntities.add(customerEntity2);
        when(customerRepository.findAll()).thenReturn(mockedCustomerEntities);

        // GetCustomersUsernames
        ArrayList<String> usernames = new ArrayList<>();
        usernames.add("juju");
        usernames.add("mama");
        assertThat(customerDAO.getCustomersUsernames()).isEqualTo(usernames);
        System.out.println(customerDAO.getCustomersUsernames());

        // GetCustomersEmail
        ArrayList<String> emails = new ArrayList<>();
        emails.add("etu47233@henallux.be");
        emails.add("etu47124@henallux.be");
        assertThat(customerDAO.getCustomersEmails()).isEqualTo(emails);

        // FindCustomerByUsername
        /*
        CustomerEntity mockedCustomerEntity = new CustomerEntity();
        when(customerRepository.findByUsername("juju")).thenReturn(mockedCustomerEntity);

        Customer customer = providerConverter.customerEntityToCustomerModel(customerEntity1);
        assertThat(customerDAO.findByUsername("juju")).isEqualTo(customer);
        System.out.println(customerDAO.findByUsername("juju"));
        */
    }
}
