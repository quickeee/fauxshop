package com.fauxshop.spring.model;
 
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
 
/**
 * Entity bean with JPA annotations
 * Hibernate provides JPA implementation
 *
 */
@Entity
@Table(name="transaction")
public class TransactionLog implements Serializable {
	
	private static final long serialVersionUID = 6182390898687671093L;
 
    @Id
    @Column(name="TRANSACTION_ID")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int transactionId;
     
    @Column(name="ACCOUNT_ID")
    private int accountId;
    
    @Column(name="ORDER_QUANTITY")
    private int orderQuantity;
    
    @Column(name="SHIP_NAME")
    private String shipName;
    
    @Column(name="SHIP_ADDRESS")
    private String shipAddress;
    
    @Column(name="SHIP_ADDRESS2")
    private String shipAddress2;
    
    @Column(name="CITY")
    private String city;
    
    @Column(name="STATE")
    private String state;
    
    @Column(name="ZIP")
    private String zip;
    
    @Column(name="COUNTRY")
    private String country;
    
    @Column(name="PHONE")
    private String phone;

    @Column(name="SHIPPING_COST")
    private BigDecimal shippingCost;
    
    @Column(name="TAX")
    private BigDecimal tax;    

    @Column(name="ORDER_EMAIL")
    private String orderEmail;
    
    @Column(name="DATE")
    private Date date;
    
    @Column(name="SHIPPED")
    private boolean shipped;
    
    @Column(name="TRACKING_NUMBER")
    private long trackingNumber;
    
    @Column(name="INVENTORY_DETAIL_ID")
    private int inventoryDetailId;
    
    @Column(name="ORDER_COST")
    private BigDecimal orderCost;    
    
    public int getTransactionId() {
        return transactionId;
    }
 
    public void setTransactionId(int transactionId) {
        this.transactionId = transactionId;
    }
 
    public int getAccountId() {
        return accountId;
    }
 
    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }
 
    public int getOrderQuantity() {
        return orderQuantity;
    }
 
    public void setOrderQuantity(int orderQuantity) {
        this.orderQuantity = orderQuantity;
    }
    
    public String getShipName() {
    	return shipName;
    }
    
    public void setShipName(String shipName) {
    	this.shipName = shipName;
    }
    
    public String getShipAddress() {
    	return shipAddress;
    }
    
    public void setShipAddress(String shipAddress) {
    	this.shipAddress = shipAddress;
    }
    
    public String getShipAddress2() {
    	return shipAddress2;
    }
    
    public void setShipAddress2(String shipAddress2) {
    	this.shipAddress2 = shipAddress2;
    }
    
    public String getCity() {
    	return city;
    }
    
    public void setCity(String city) {
    	this.city = city;
    }
    
    public String getState() {
    	return state;
    }
    
    public void setState(String state) {
    	this.state = state;
    }
    
    public String getZip() {
    	return zip;
    }
    
    public void setZip(String zip) {
    	this.zip = zip;
    }    

    public String getCountry() {
    	return country;
    }
    
    public void setCountry(String country) {
    	this.country = country;
    }
    
    public String getPhone() {
    	return phone;
    }
    
    public void setPhone(String phone) {
    	this.phone = phone;
    } 
    
    public BigDecimal getShippingCost() {
    	return shippingCost;
    }
    
    public void setShippingCost(BigDecimal shippingCost) {
    	this.shippingCost = shippingCost;
    }
    
    public BigDecimal getTax() {
    	return tax;
    }
    
    public void setTax(BigDecimal tax) {
    	this.tax = tax;
    }    
    
    public String getOrderEmail() {
    	return orderEmail;
    }
    
    public void setOrderEmail(String orderEmail) {
    	this.orderEmail = orderEmail;
    }
    
    public Date getDate() {
    	return date;
    }
    
    public void setDate(Date date) {
    	this.date = date;
    }
    
    public boolean getShipped() {
    	return shipped;
    }
    
    public void setShipped(boolean shipped) {
    	this.shipped = shipped;
    }
    
    public long getTrackingNumber() {
    	return trackingNumber;
    }
    
    public void setTrackingNumber(long trackingNumber) {
    	this.trackingNumber = trackingNumber;
    }
    
    public int getInventoryDetailId() {
    	return inventoryDetailId;
    }
    
    public void setInventoryDetailId(int inventoryDetailId) {
    	this.inventoryDetailId = inventoryDetailId;
    }
    
    public BigDecimal getOrderCost() {
    	return orderCost;
    }
    
    public void setOrderCost(BigDecimal orderCost) {
    	this.orderCost = orderCost;
    }     
    
    @Override
    public String toString(){
        return "transactionId="+transactionId+
        		", accountId="+accountId+
        		", orderQuantity="+orderQuantity+
        		", shipName="+shipName+
        		", shipAddress="+shipAddress+
        		", city="+city+
        		", state="+state+
        		", zip="+zip+
        		", country="+country+
        		", phone="+phone+
        		", tax="+tax+
        		", orderEmail="+orderEmail+
        		", date="+date+
        		", shipped="+shipped+
        		", trackingNumber="+trackingNumber+
        		", inventoryDetailId="+inventoryDetailId+
        		", orderCost="+orderCost;
        		
    }
}