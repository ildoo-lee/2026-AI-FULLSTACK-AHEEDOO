package com.the703.oop005;

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
		System.out.println("멍멍!");
		
	}
	
	
}

public class Abstractclass001 {
	public static void main(String[] args) {
		//Animal3 a = new Animal3();
		//Cannot instantiate the type Animal3(Animal3는 객체로 만들 수 없어!)
		
		Animal3 a = new Dog3();
		
		//2. a가 개인지 고양이인지 따질 필요(instanceof)기 없다.
		//부모가 이름을 sound로 통일시켰으니, 그냥 부르면 자식이 알아서 대답합니다.
		a.sound();
		
		a.breathe();
		
		
	}
}
