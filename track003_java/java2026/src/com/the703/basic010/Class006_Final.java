package com.the703.basic010;

import java.awt.Color;

//1. final 변경하지마
//1) 클래스는 부품객체
//2)클래스(상속X)는 상태(멤버변수)와 행위(멤버변수)

/*Final class 앞에 Final 붙이면 재사용하지마-상속*/

class FinalEx extends Object{
	static final String child="5-5"; // 클래스 변수 - 메서드 영역 - new와 상관이 없어, 인스턴스도 아니야 그래서 this와도 상관없어
	String name; // 인스턴스변수 - heap 영역 -new o - 생성자() - this
	/*final*/ void show() {System.out.println(child+"\t + name");} // 인스턴스 메서드
}

class FinalExSon extends FinalEx{
	@Override void show() { System.out.println("나한테 맞게 수정");}
}

//class FinalExSon extends Color{}

public class Class006_Final {

	public static void main(String[] args) {
		//System.out.println(Color.black); // static final   #000
		//FinalEx.child="2-12";
		//The final field FinalEx.child cannot be assigned
		
	}

}

/****
final (하지마)

1) 클래스 (재사용하지마; 상속X ; extends 사용못함)
2)멤버변수 (상수O ; 값변경 X)
3)멤버함수 (부모기능 수정 X @Override 못함)


*/