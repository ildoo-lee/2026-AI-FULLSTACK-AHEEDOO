package com.the703.basic005_ex;

import java.util.Scanner;

public class IfEx002 {

	public static void main(String[] args) {
		// 변수 - 숫자 한개를 입력받아
		Scanner sc = new Scanner(System.in);
		int a = -1;
		
		// 입력 - 입력받기
		System.out.print("숫자를 입력하세요>");
		a = sc.nextInt();
				
		// 처리 - 양수라면 양수 , 음수라면 음수, 0이라면 zoro를 출력
		// if(양수라면){양수}
		// else if(음수라면){음수}
		// else if(0이라면){zero}
		// 출력
		     if( a > 0 ) {System.out.println("양수");}
		else if( a < 0 ) {System.out.println("음수");}
		else if( a == 0) {System.out.println("zero");}
	
		// 삼항연산자     
		System.out.println( a > 0 ? "양수" : (a < 0 ? "음수" : "zero"));
	}

}

/*

출력내용 : 숫자 한개를 입력받아 
양수라면 양수  , 음수라면 음수  ,0이라면 zero를 출력하는 프로그램을 작성하시오.

*/