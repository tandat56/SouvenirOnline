package com.souvenironline.service.web.impl;

import com.souvenironline.dto.CartDTO;
import com.souvenironline.entity.BillEntity;
import com.souvenironline.service.web.IBillWebService;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class BillWebService implements IBillWebService {
    @Override
    public int addBill(BillEntity bill) {
        return 0;
    }

    @Override
    public void addBillDetail(HashMap<Long, CartDTO> carts) {

    }
}
