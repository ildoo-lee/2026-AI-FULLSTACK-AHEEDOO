package com.the703.basic010_ex;

class Coffee {
	// 멤버변수 :
	String name;
	int price, num;
	// 멤버함수 :

	void show() {

		System.out.println("커피이름 : " + name);
		System.out.println("커피가격 : " + price);
		System.out.println("커피잔수 : " + num);

	} // 커피정보출력

	public Coffee() {
		super();
		this.name = "아메리카노";
		this.price = 2000;
		this.num = 1;
	}
	
	public Coffee(String name, int price, int num) {
		super();
		this.name = name;
		this.price = price;
		this.num = num;
	}
	
	@Override
	public String toString() {
		return "Coffee [name=" + name + ", price=" + price + ", num=" + num + "]";
	}
}//class Coffee

public class ClassEx003 {
	public static void main(String[] args) {
		Coffee a1 = new Coffee("까페라떼", 2, 4000);
		a1.show();

		Coffee a2 = new Coffee(); //1)new 객체생성   2)초기화 "아메리카노" , 1잔, 2000  3) 주소 
		a2.show();
		System.out.println(a2);
	}
}

//////////////////////////////////////////////////////
/* [RUNTIME DATA AREA]
------------------------------------
[METHOD:정보] Coffee.class       ClassEx003.class#1
----------------------------------------------------
[HEAP:동적]                        |  [STACK:지역]
2번지:{name, num, price, show()}                    ← a2[2번지]
1번지:{name="까페라떼", num=2, price=4000, show()}     ← a1에게 주소를 준다[1번지]                                       
                                       main#2
----------------------------------------------------
*/
//////////////////////////////////////////////////////


/*
 * 
 * 연습문제1) 
 * class 패키지명 : com.the703.basic010_ex 클래스명 : ClassEx003 -- 생성자 작성하시오.
 * class Coffee{ 멤버변수 : String name; int price, num; 멤버함수 : void show(){}
 * //커피정보출력 }
 * 
 * public class Class003 { public static void main(String[] args) { Coffee a1 =
 * new Coffee("까페라떼" ,2 , 4000); a1.show(); Coffeea2 = new Coffee(); a2.show();
 * } }
 * 
 * 출력내용 :
=====
커피 커피명 : 까페라떼 
커피잔수 : 2 
커피가격 : 8000 
=====
커피 커피명 : 아메리카노 
커피잔수 : 1
커피가격 : 2000
 * 
 */


