package com.the703.basic004_ex;

import java.util.Scanner;

public class OperatorEx002 {

	public static void main(String[] args) {
		// 산술연산(+ - * / %) 비교( > < ) 조건( && ||  ?: )  대입 (=)
		int x=5; char ch='\u0000';
				
		
		// q1-1 int형 변수 x가 3보다 크고 10보다 작을때 true인 조건식
		System.out.println( x>3 && x<10 );
		
        Scanner scanner = new Scanner(System.in);
		//입력
		System.out.print("문자를 입력하세요 >"); 
		ch = scanner.next().charAt(0);
		
		//출력
		System.out.println();
		// q1-2 char형 변수 ch가 'a' 또는 'A'일때   true인 조건식    
		System.out.println( ch == 'a' || ch == 'A' );
		
				
		System.out.println();
		// q1-3 char형 변수 ch가 숫자('0'~'9')일때   true인 조건식
		System.out.println( ch >= '0' || ch <= '9' );
		
		
		System.out.println();
		// q1-4 char형 변수 ch가 영문자(대문자 또는 소문자) 일때   true인 조건식
		System.out.println(ch >= 'A' && ch <= 'Z' || ch >= 'a' && ch <= 'z');
		// A 65
		// B 66
		// C 67
		
		

	}

}

/*

연습문제6)  다음에 해당하는 클래스의 조건을 출력하시오.
패키지명 : com.the703.basic004_ex
클래스명 : OperatorEx002
q1-1 int형 변수 x가 3보다 크고 10보다 작을때 true인 조건식 
q1-2 char형 변수 ch가 'a' 또는 'A'일때   true인 조건식    
q1-3 char형 변수 ch가 숫자('0'~'9')일때   true인 조건식     
q1-4 char형 변수 ch가 영문자(대문자 또는 소문자) 일때   true인 조건식

*/