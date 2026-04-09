package com.the703.basic006_ex;

import java.util.Scanner;

public class java_0409_2 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		// 변수
		char ch = '\u0000';
		
		// 입력
		System.out.print("a, b c 중 입력하세요>");
		ch = scanner.next().charAt(0);
		
		// 처리+출력
		switch(ch) {
			case 'a' : System.out.println("apple");break;
			case 'b' : System.out.println("banana");break;
			case 'c' : System.out.println("coconut");break;
		
		}
		
				
		
	}

}
