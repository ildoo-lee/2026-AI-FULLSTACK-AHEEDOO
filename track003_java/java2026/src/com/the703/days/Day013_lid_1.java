package com.the703.days;

import java.util.Scanner;

public class Day013_lid_1 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		System.out.print("요일 입력(1~7) > ");
		int day = scanner.nextInt();
		
		// 1. if 
		     if(day == 1) {System.out.println("월요일");}
		else if(day == 2) {System.out.println("화요일");}
		else if(day == 3) {System.out.println("수요일");}
		else if(day == 4) {System.out.println("목요일");}
		else if(day == 5) {System.out.println("금요일");}
		else              {System.out.println("주말");}
		
		// 2. switch
		
		     
		switch(day) {
		case 1 : System.out.println("월요일");break;
		case 2 : System.out.println("화요일");break;
		case 3 : System.out.println("수요일");break;
		case 4 : System.out.println("목요일");break;
		case 5 : System.out.println("금요일");break;
		default : System.out.println("주말");break;
		}     
		     
		// 3. for, while do while
		for(int a = 1 ; a<=10 ; a++) {System.out.print(a);} //for
		System.out.println();
		
		int b = 1;
		while(b<=10) {System.out.print(b); b++;} //while
		System.out.println();
		
		int c = 1;
		do{System.out.print(c);c++; }while(c<=10);  //do while
		System.out.println();
		
		// 이중 for
		
		for(int m = 1; m<=4; m++) {
			for(int n = 1; n<=4; n++) {System.out.print(n);}
			System.out.println();
		}

	} // main

} //class
