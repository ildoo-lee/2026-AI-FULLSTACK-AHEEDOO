package com.the703.oop003;

class Phone{
	String model;
	
	public Phone(String model) {
		super();
		this.model = model;
	}

	/*final*/ void call() { 
	// final 을 활성화 하면, 못 박은것이라 아래에서 Override 못함.
		System.out.println(model + "로 전화를 겁니다.");
	}
	
}

class SmartPhone extends Phone{
	String os;
	
	public SmartPhone(String model, String os) {
		super(model); // 부모님께 모델명 전달
		this.os = os; // 내 상자에 os 저장
	}
	
	@Override
	void call() {
		//super.call(); //부모내용을 지우고 새로 바꾸기 위해
		System.out.println(model+"으로 영상 통화를 겁니다.");
	}


	void internet() {
		System.out.println("인터넷에 접속합니다.");
	}
}

public class Extends002 {
	public static void main(String[] args) {
		
		Phone p1 = new Phone("아이폰");
		p1.call();
		
		SmartPhone p2 = new SmartPhone("S24", "안드로이드");
		p2.internet();
		
		p2.call();
		
		
	}
}