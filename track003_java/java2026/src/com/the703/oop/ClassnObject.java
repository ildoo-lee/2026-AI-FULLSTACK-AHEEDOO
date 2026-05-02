package com.the703.oop;

class FishBread{
	//1. 속성
	String flavor; // 밭, 슈크림 등
	int price; // 가격
	
} // 붕어빵 만들기 위해 필요한 기본 정보(데이터) 정의 = 설계도

public class ClassnObject {
	public static void main(String[] args) {

	// 객체 생성 = 설계도를 불어와서 객체 생성
		FishBread bread = new FishBread();
		
		// 값넣기
		bread.flavor="팥";
		bread.price=1000;
		
		System.out.println(bread.flavor + "붕어빵 각격은 " + bread.price +"원");
				
	}
}
