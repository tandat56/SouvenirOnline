package com.souvenironline.service.web.impl;

import com.souvenironline.converter.ProductConverter;
import com.souvenironline.dto.CartDTO;
import com.souvenironline.dto.ProductDTO;
import com.souvenironline.repository.ProductRepository;
import com.souvenironline.service.web.ICartService;
import com.souvenironline.service.web.IProductWebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class CartService implements ICartService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private IProductWebService productWebService;

    @Autowired
    private ProductConverter productConverter;

    @Override
    public HashMap<Long, CartDTO> addCard(long id, HashMap<Long, CartDTO> cart) {
        CartDTO itemCart = null;
        if(cart == null ) {
            cart = new HashMap<>();
        }
        ProductDTO product =  productWebService.findById(id);
        if (product != null && cart.containsKey(id)) {
            itemCart = cart.get(id);
            itemCart.setQuantity(itemCart.getQuantity() + 1);
            itemCart.setTotalPrice(itemCart.getQuantity() * itemCart.getProduct().getPrice());
        }
        else {
            itemCart = new CartDTO();
            itemCart.setProduct(product);
            itemCart.setQuantity(1);
            itemCart.setTotalPrice(product.getPrice());
        }
        cart.put(id, itemCart);
        return cart;
    }

    @Override
    public HashMap<Long, CartDTO> editCart(long id, int quantity, HashMap<Long, CartDTO> cart) {
        if (cart == null) {
            return cart;
        }
        CartDTO itemCart = new CartDTO();
        if (cart.containsKey(id)) {
            itemCart = cart.get(id);
            itemCart.setQuantity(quantity*2);
            double totalPrice = (quantity * itemCart.getProduct().getPrice())*2;
            itemCart.setTotalPrice(totalPrice);
        }
        cart.put(id, itemCart);
        return cart;
    }

    @Override
    public HashMap<Long, CartDTO> deleteCart(long id, HashMap<Long, CartDTO> cart) {
        if (cart == null) {
            return cart;
        }
        if (cart.containsKey(id)) {
            cart.remove(id);
        }
        return cart;
    }

    @Override
    public int totalQuantity(HashMap<Long, CartDTO> cart) {
        int totalQuanty = 0;
        for (Map.Entry<Long, CartDTO> itemCart : cart.entrySet()) {
            totalQuanty += itemCart.getValue().getQuantity();
        }
        return totalQuanty/2;
    }

    @Override
    public double totalPrice(HashMap<Long, CartDTO> cart) {
        double totalPrice = 0;
        for (Map.Entry<Long, CartDTO> itemCart : cart.entrySet()) {
            totalPrice += itemCart.getValue().getTotalPrice();
        }
        return totalPrice/2;
    }
}
