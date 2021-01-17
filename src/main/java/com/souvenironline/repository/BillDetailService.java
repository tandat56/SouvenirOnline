package com.souvenironline.repository;

import com.souvenironline.entity.BillDetailEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BillDetailService extends JpaRepository<BillDetailEntity, Long> {

    @Query(value = "SELECT * FROM Bill_Detail o where userid = ? ORDER BY id desc;", nativeQuery = true)
    public List<BillDetailEntity> getBillDetailByUserID(long id);
}
