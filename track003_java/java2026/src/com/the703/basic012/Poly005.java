package com.the703.basic012;

//1. 다형성
//   하나의 타입(부모)으로 여러타입의 객체(자식들)를 관리하는 것이 목적

/*          Object
              ↑
            Animal{String name; int age / show()}
            ↑    ↑
          Cat    Person
{num, @show()}  {jumin, @show()}


*/

class Animal extends Object{
	String name; 
	int age;
	
	void show(){System.out.println("Animal🌊");}
	
	public Animal(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
}
class Cat extends Animal{
	String num;
	@Override void show(){
		System.out.println("Cat🌊>" + super.name +  "/" + super.age);
		}
	
	public Cat(String name, int age, String num) {
		super(name, age);
		this.num = num;
	}
	
}
class Person extends Animal{
	String jumin;
	@Override void show(){
		System.out.println("Person😀>" + super.name +  "/" + super.age);
		}
	
	public Person(String name, int age, String jumin) {
		super(name, age);
		this.jumin = jumin;
	}
	
}

//////////////////////////////////////////
public class Poly005 {
	public static void main(String[] args) {
		// 하나의 타입(부모)으로 여러타입의 객체(자식들) 관리
		Animal[] anis = {
				new Cat("나비", 5, "cat-001"), 
				new Cat("초롱이", 10, "cat-002"), 
				new Person("고길동", 40, "711020") , 
				new Person("미달자", 30, "900120")
				};
		anis[0].show();   
		anis[1].show();   
		anis[2].show();   
		anis[3].show(); 

	}

}

