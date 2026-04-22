package com.the703.basic010_ex;

import java.util.Scanner;


//1. 클래스는 부품객체
//2. 클래스 상태(멤버변수)와 행위(멤버함수)



class TV {
	// 상태-멤버변수 : 채널/볼륨
	String channel;
	int volume;
	// 행위-멤버함수 : 채널, 볼륨

	// 입력:
	void input() {

		Scanner scanner = new Scanner(System.in);
		System.out.print("channel입력>");
		channel = scanner.next();

		System.out.print("volume 입력>");
		volume = scanner.nextInt();
	}

	// 출력:
	void show() {
		System.out.printf("%s\t%d",channel,volume);
		System.out.println();
	}

	public TV() {
		super();
	}

	public TV(String channel, int volume) {
		super();
		this.channel = channel;
		this.volume = volume;
	}

	@Override
	public String toString() {
		return "TV [channel=" + channel + ", volume=" + volume + "]";
	}

}

///////////////////////////////////
public class ClassEx004 {
	public static void main(String[] args) {

		TV t1 = new TV("JDBC", 8);
		t1.show();
		System.out.println(t1);
		
		TV t2 = new TV();
		t2.input();
		t2.show();
	}
}

/*
 * 연습문제2) class 패키지명 : com.the703.basic010_ex_ex 클래스명 : ClassEx004 -- 생성자 작성하시오.
 * class TV{ //상태-멤버변수 : 채널/볼륨 String channel; int volume; //행위-멤버함수 : 채널, 볼륨
 * 입력: input() / 출력 : show() }
 * 
 * public class ClassEx004 { public static void main(String[] args) { TV t1 =
 * new TV("JDBC" , 8); t1.show(); TV t2 = new TV(); t2.input(); t2.show(); } }
 * 
 * 
 * 출력내용 : JDBC 8
 * 
 * channel입력> youtube volume 입력> 10 youtube 10
 * 
 * 
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