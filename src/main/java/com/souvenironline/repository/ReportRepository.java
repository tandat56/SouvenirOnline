package com.souvenironline.repository;

import com.souvenironline.entity.Report;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.io.Serializable;
import java.util.List;

public interface ReportRepository extends JpaRepository<Report, Serializable> {
//    @Query(value = "SELECT new Report(o.Category_Product.code, "
//            + " sum(o.price * o.quantity), "
//            + " sum(o.quantity), "
//            + " min(o.price), "
//            + " max(o.price), "
//            + " avg(o.price)) "
//            + " FROM Product o "
//            + " GROUP BY o.Category_Product.code", nativeQuery = true)
//    List<Report> inventoryByCategory();

}

