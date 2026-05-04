package com.the703.oop007;

import java.util.ArrayList;

abstract class Animal3{
	
	//1. 공통 기능(일반 메서드)
	void breathe() {
		System.out.println("숨을 쉽니다.");
	}
	
	//2. 숙제(추상 메서드)
	//중괄호 {}가 있어야할 자리에 세미콜론 ; 이 들어간다.
	abstract void sound(); // 자식들에게 알아서 하라고(내용물{}) 중괄호 없음
	
		}
class Dog3 extends Animal3{
	
	@Override
	void sound() {
		System.out.println("멍멍");
		
	}
	
	
}

class Cat3 extends Animal3{
	
	@Override
	void sound() {
		System.out.println("야옹");
		
	}
	
	
}


public class ArrayList002 {
	public static void main(String[] args) {
		//1. 리스트 생성(바구니 준비)
		ArrayList<Animal3> shelter = new ArrayList();
		
		//2. 무한 추가 기능(.add)
		shelter.add(new Dog3());
		shelter.add(new Cat3());
		shelter.add(new Dog3());
		//필요하면 여기서 100마리든 더 넣어도 됨. 배열처럼 숫자를 셋 필요가 없음
		
		shelter.remove(0);
		
		System.out.println("현재 보호소 동물 수: "+ shelter.size());
		System.out.println("=================================");
		
		//3. 향상된 for문으로 꺼내기
		for(Animal3 a : shelter) {
			a.breathe(); // 공통기능
			a.sound(); // 다형성 기능 (개면 멍멍, 고양이면 야옹)
		}
		
		
		
	}
}
