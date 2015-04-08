package com.asal.training.bean;

public class Json {
String json  ; 
String Title ; 
int id  ;
public Json(String  json  , String Title ,int id ){
	this.id=id ; 
	this.json =json ;
	this.Title=Title ; 
}
public String getJson() {
	return json;
}
public void setJson(String json) {
	this.json = json;
}
public String getTitle() {
	return Title;
}
public void setTitle(String title) {
	Title = title;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
}
