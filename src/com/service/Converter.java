package com.service;

import java.sql.Date;

public class Converter {

	public Date convertToDate(String str) {
	      String[] arr =str.split("-");
	      long time =   new java.util.Date(arr[1]+"/"+arr[2]+"/"+arr[0]).getTime();
	      
	      return new Date(time);
	   }
}
