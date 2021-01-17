package com.souvenironline.repository;

import com.souvenironline.entity.BillEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BillRepository  extends JpaRepository<BillEntity, Long> {

    @Query(value = "SELECT COUNT(*) FROM bill;", nativeQuery = true)
    public int countBill();

    @Query(value = "SELECT MAX(id) FROM bill;", nativeQuery = true)
    public long getIDLastOrder();
}
