package com.po;

public class Main_brand {
	private String brand_no;
	private String brand;
	
	public String getBrand_no() {
		return brand_no;
	}
	public void setBrand_no(String brand_no) {
		this.brand_no = brand_no;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	@Override
	public String toString() {
		return "Main_brand [brand_no=" + brand_no + ", brand=" + brand + "]";
	}
}
