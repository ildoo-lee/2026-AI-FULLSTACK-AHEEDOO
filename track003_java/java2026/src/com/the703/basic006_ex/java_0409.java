package com.the703.basic006_ex;

import java.util.Scanner;

public class java_0409 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		// 변수
		char ch = '\u0000';
		
		// 입력
		System.out.print("a b c 중 입력하세요>");
		ch = scanner.next().charAt(0);
		
		// 처리+출력
		     if(ch == 'a') {System.out.println("apple");}
		else if(ch == 'b') {System.out.println("banana");}
		else if(ch == 'c') {System.out.println("coconut");}
		
		// System.out.println(ch == 'a' ? "apple" : ch == 'b' ? "banana" :  ch == 'c' ? "coconut" : "다시 입력하세요");
	
		

	}

}
