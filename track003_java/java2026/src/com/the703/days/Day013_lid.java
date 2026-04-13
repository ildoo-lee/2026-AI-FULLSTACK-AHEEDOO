package com.the703.days;

import java.util.Scanner;

public class Day013_lid {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		System.out.print("요일 입력(1~7) > ");
		int day = scanner.nextInt();
		
		// 1. if 버전 정수를 하나 입력받아 그에 따른 요일을 출력하는 프로그램 작성
		
		String[] days = {"월요일", "화요일", "수요일", "목요일", "금요일"};
		if(day >= 1 && day <= 5) {System.out.println(days[day-1]+"\n");
		} else{System.out.println("주말\n");}
		

		// 2. switch 버번 위 문제를 switch로
		
		String  x = "";
		switch(day) {
		case 1 : x = "월요일";break;
		case 2 : x = "화요일";break;
		case 3 : x = "수요일";break;
		case 4 : x = "목요일";break;
		case 5 : x = "금요일";break;
		default : x = "주말";break;
		} System.out.println(x+"\n");
		

		     
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
