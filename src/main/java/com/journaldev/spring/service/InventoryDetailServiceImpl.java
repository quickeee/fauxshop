package com.journaldev.spring.service;
 
import java.util.List;
 
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.journaldev.spring.dao.InventoryDetailDAO;
import com.journaldev.spring.model.InventoryDetail;
 
@Service
public class InventoryDetailServiceImpl implements InventoryDetailService {
     
    private InventoryDetailDAO inventoryDetailDAO;
 
    public void setInventoryDetailDAO(InventoryDetailDAO inventoryDetailDAO) {
        this.inventoryDetailDAO = inventoryDetailDAO;
    }
 
    /*@Override*/
    @Transactional
    public List<InventoryDetail> listInventoryDetail() {
        return this.inventoryDetailDAO.listInventoryDetail();
    }
 
    /*@Override*/
    @Transactional
    public InventoryDetail getInventoryDetailByInventoryId(int inventoryId) {
        return this.inventoryDetailDAO.getInventoryDetailByInventoryId(inventoryId);
    }
 
}