package com.po;

public class Air_compressor {
	private String brand_no;
	private String name;
	private String options;
	private String value;
	private float price_first;
	private float price_second;
	
	public String getBrand_no() {
		return brand_no;
	}
	public void setBrand_no(String brand_no) {
		this.brand_no = brand_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOptions() {
		return options;
	}
	public void setOptions(String options) {
		this.options = options;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public float getPrice_first() {
		return price_first;
	}
	public void setPrice_first(float price_first) {
		this.price_first = price_first;
	}
	public float getPrice_second() {
		return price_second;
	}
	public void setPrice_second(float price_second) {
		this.price_second = price_second;
	}
	@Override
	public String toString() {
		return "Air_compressor [brand_no=" + brand_no + ", name=" + name + ", options=" + options + ", value=" + value
				+ ", price_first=" + price_first + ", price_second=" + price_second + "]";
	}
	
	
}
