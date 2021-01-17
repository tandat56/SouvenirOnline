package com.souvenironline.repository;

import com.souvenironline.entity.Report;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ReportRepository extends JpaRepository<Report, Long> {

    @Query(value = "SELECT new Report(p.product_id, sum(p.total * p.quantity), sum(p.quantity), min(p.total),max(p.total),avg(p.total) FROM orderdetail p GROUP BY p.product_id)", nativeQuery = true)
    List<Report> revenueByCategory();

    @Query(value = "SELECT new Report(month() p.product_id, sum(p.total * p.quantity), sum(p.quantity), min(p.total),max(p.total),avg(p.total) FROM or p GROUP BY p.product_id)", nativeQuery = true)
    List<Report> revenueByMonth();

}
