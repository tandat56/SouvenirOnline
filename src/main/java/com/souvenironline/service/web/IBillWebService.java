package com.souvenironline.service.web;

import com.souvenironline.dto.CartDTO;
import com.souvenironline.entity.BillEntity;

import java.util.HashMap;

public interface IBillWebService {

    int addBill(BillEntity bill);
    void addBillDetail(HashMap<Long, CartDTO> carts);
}
