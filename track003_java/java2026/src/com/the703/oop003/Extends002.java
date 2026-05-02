package com.the703.oop003;

class Phone{
	String model;
	
	void call() {
		System.out.println("전화를 겁니다.");
	}
	
}

class SmartPhone extends Phone{
	String os;
	
	void internet() {
		System.out.println("인터넷에 접속합니다.");
	}
}

public class Extends002 {
	public static void main(String[] args) {
		
		Phone p1 = new Phone();
		p1.call();
		
		SmartPhone p2 = new SmartPhone();
		p2.internet();
		
		p2.call();
		
		
	}
}