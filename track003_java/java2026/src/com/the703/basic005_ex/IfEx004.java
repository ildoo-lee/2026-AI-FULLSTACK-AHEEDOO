package com.the703.basic005_ex;

import java.util.Scanner;

public class IfEx004 {

	public static void main(String[] args) {
		// 변수
		
		Scanner  sc = new Scanner(System.in);
		char ch = '\u0000';
				
		System.out.println();
		
		// 입력
		System.out.print("문자를 입력하세요 >");
		ch = sc.next().charAt(0);
		
		
		// 처리
		
		System.out.println();
		// 출력
		     if( ch>='A' && ch<='Z' ) {System.out.println("대문자");}
		else if( ch>='a' && ch<='z' ) {System.out.println("소문자");}
		
		     
	    // 삼항 연산자
		System.out.println( ch>='A' && ch<='Z' ? "대문자"
				:           ch>='a' && ch<='z' ? "소문자" : "" );
		
	}

}

/*
출력내용 : 문자한개를 입력받아 
   대문자인지,  소문자인지 판별하는 프로그램을 작성하시오.
   ※  대문자  ch>='A' && ch<='Z' / 소문자  ch>='a'  &&  ch<='z'  

*/
