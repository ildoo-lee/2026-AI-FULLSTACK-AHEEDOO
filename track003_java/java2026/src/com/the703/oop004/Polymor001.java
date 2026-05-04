package com.the703.oop004;

class Animal{
	String name;
	
	void breathe() {
		System.out.println("숨을 쉽니다.");
	}
}

class Dog extends Animal{
	void Bark() {
		System.out.println("멍멍! 짖습니다.");
	}
}

public class Polymor001 {
	public static void main(String[] args) {

	    //1. 업케스팅(부모 ← 자식)
		Animal myAnimal = new Dog();
		
		myAnimal.breathe(); // 가능(부모의 기능)
		// myAnimal.bark(); // 불가능!(부모타입으로는 자식의 특기를 볼 수 없음

		//2. 다운케스팅(부모 → 자식)
		Dog myDog = (Dog)myAnimal; //  (Dog) 명시
		
		myDog.Bark();
		myDog.breathe();
		
	}
}