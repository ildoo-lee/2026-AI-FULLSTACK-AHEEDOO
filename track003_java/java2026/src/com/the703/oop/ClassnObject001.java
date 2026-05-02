package com.the703.oop;

class Student{
	private String name;
	int age;
	
	Student(String n, int a){
		name = n;
		age = a;
	}
	
	
	void sayHello() {
		// 인사하는 동작 메서드 추가
		System.out.println("안녕하세요, 제 이름은 "+name+"입니다.");
	}

	void addAge() {
		age += 1;
		System.out.println("나이는 "+age+"살 입니다.");
	}
	
	int getNextAge() {
		return age +1;
	}


}// class


public class ClassnObject001 {
	public static void main(String[] args) {

	Student s1 = new Student("Lee", 10);
	Student s2 = new Student("Kim",20);
	
	
	//s1.age=10;
	//s1.name="Lee";
	
	//System.out.println("내 이름은 "+ s1.name+"이고, 나이는 "+s1.age+"이야");
	
	s1.sayHello();
	s1.addAge();
	
	s2.sayHello();
	s2.addAge();
	
	int nextAge = s1.getNextAge();
	System.out.println("내년 내 나이는 "+nextAge+"살이 되겠네!");
	
	s1.addAge();
	//int result = s1.addAge();
	
	int next = s1.getNextAge();
	System.out.println("내후년 나이에 100을 더하면 "+(next+100));
	
	
	}
}
