package com.souvenironline.dto;

import com.souvenironline.entity.ProductEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CartDTO {

    private int quantity;
    private double totalPrice;
    private ProductDTO product;

}
