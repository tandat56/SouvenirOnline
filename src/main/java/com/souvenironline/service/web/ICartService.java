package com.souvenironline.service.web;

import com.souvenironline.dto.CartDTO;

import java.util.HashMap;

public interface ICartService {
    HashMap<Long, CartDTO> addCard(long id, HashMap<Long, CartDTO> cart);
    HashMap<Long, CartDTO> editCart(long id, int quantity, HashMap<Long, CartDTO> cart);
    HashMap<Long, CartDTO> deleteCart(long id, HashMap<Long, CartDTO> cart);
    int totalQuantity(HashMap<Long, CartDTO> cart);
    double totalPrice(HashMap<Long, CartDTO> cart);
}
