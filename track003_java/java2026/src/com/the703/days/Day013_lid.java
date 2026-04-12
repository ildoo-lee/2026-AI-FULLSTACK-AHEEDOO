package com.the703.days;

import java.util.Scanner;

public class Day013_lid {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		System.out.print("요일 입력(1~7) > ");
		int day = scanner.nextInt();
		
		// 1. if 버전 정수를 하나 입력받아 그에 따른 요일을 출력하는 프로그램 작성
		
		     if(day == 1) {System.out.println("월요일" + "\n");}
		else if(day == 2) {System.out.println("화요일" + "\n");}
		else if(day == 3) {System.out.println("수요일" + "\n");}
		else if(day == 4) {System.out.println("목요일" + "\n");}
		else if(day == 5) {System.out.println("금요일" + "\n");}
		else              {System.out.println("주말" + "\n");}
		
		// 2. switch 버번 위 문제를 switch로
		     
		switch(day) {
		case 1 : System.out.println("월요일" + "\n");break;
		case 2 : System.out.println("화요일" + "\n");break;
		case 3 : System.out.println("수요일" + "\n");break;
		case 4 : System.out.println("목요일" + "\n");break;
		case 5 : System.out.println("금요일" + "\n");break;
		default : System.out.println("주말" + "\n");break;
		} // switch     
		     
		// 3. for, while, do while 버전 1 ~ 10 출력
		
		for(int a = 1 ; a <= 10 ; a++) {System.out.print(a);}
		
		System.out.println();
		
		int b = 1;
		while(b <= 10) {System.out.print(b); b++;}
		
		System.out.println();
		
		int c = 1;
		do{System.out.print(c); c++;} while(c <= 10);
		
		System.out.println("\n");
		
		// 4. 이중 for 버전 1234/1232/1234/1234
		
		for(int m = 1 ; m <= 4 ; m++) {
			for(int n = 1 ; n <= 4 ; n++) {System.out.print(n);}
			System.out.println();
		}
		

	} // main

} // class
