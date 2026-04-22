package com.the703.basic010;

import java.util.Scanner;


//1. 클래스는 부품객체
//2. 클래스 상태(멤버변수)와 행위(멤버함수)
/*
              Object                 2)Object(){                               } 3)
                ↑
              Product{name, price}   1)Product(){super(); name=null, price=0   } 4)
     
*/


class Product extends Object{ // 상속받을께, Object(클래스의 기본틀), Object 생략가능
	// 인스턴스 변수
	String name;
	int price;
	// alt+shift+s
	
	
	// 입력:
	void input() {

		Scanner scanner = new Scanner(System.in);
		System.out.print("channel입력>");
		name = scanner.next();

		System.out.print("volume 입력>");
		price = scanner.nextInt();
	}

	// 출력:
	void show() {
		System.out.printf("%s\t%d",name,price);
		System.out.println();
	}

	public Product() {super();} // super - Object()    ctrl+alt+j 한줄
	public Product(String name, int price) { super(); this.name = name; this.price = price; } // this(각각의 내꺼)
	@Override public String toString() { return "Product [name=" + name + ", price=" + price + "]"; }

}

///////////////////////////////////
public class Class004 {
	public static void main(String[] args) {

		Product t1 = new Product("JDBC", 8);
		t1.show();
		System.out.println(t1);
		
		Product t2 = new Product(); // 1)new 객체생성  2)생성자-초기화   3)t2 조소갖기 (1번지)
		System.out.println(t2); // t2(1번지)  => 1번지:Product{name=null, price=0}
		t2.input();
		t2.show();
		
		Product t3 = new Product("아이폰17",100); // 1)new 객체생성  2)생성자-초기화   3)t2 조소갖기 (2번지)
		System.out.println(t3); // t3(2번지)  => 2번지:Product{name=null, price=0}
	}
}

//////////////////////////////////////////////////////

/* [RUNTIME DATA AREA]
-------------------------------------------------------
[METHOD:정보]  Product.class(설계도)     , Class.class#1
-------------------------------------------------------
[HEAP:동적]                            |  [STACK:지역]
1번지:Product{name=null, price=0}         ← t2(1번지)
                                           main#2)
                                           
-------------------------------------------------------
(인스턴스)


*/
//////////////////////////////////////////////////////


/*
 
 * ■ OOP
1.  생성자   - new 연산자에 의해 호출 [  객체 초기화     ] 담당

2. 기본생성자( 디폴트생성자 )
- 모든클래스에 생성자가 반드시 존재
- 생성자선언을 생략시 컴파일러가 자동으로 기본생성자를 추가
- 개발자가 선언시 컴파일러가 자동생성  (   취소     )

3. 생성자형식
class A{
   public    A(                 ){}   //기본생성자(디폴트생성자)
   public    A(String name){}   //파라미터, 알규먼트가 있는 생성자.
}
1)  리턴값  (  없음   )
2)  클래스명과  (  동일    ) 
 * 
 * 
 */