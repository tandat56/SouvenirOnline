package com.souvenironline.repository;

import com.souvenironline.entity.Report;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.io.Serializable;
import java.util.List;

public interface ReportRepository extends JpaRepository<Report, Serializable> {
/*    @Query(value = "SELECT new Report(o.category.name, "
            + " sum(o.unitPrice * o.quantity), "
            + " sum(o.quantity), "
            + " min(o.unitPrice), "
            + " max(o.unitPrice), "
            + " avg(o.unitPrice)) "
            + " FROM Product o "
            + " GROUP BY o.category.name", nativeQuery = true)
    List<Report> inventoryByCategory();*/

}

