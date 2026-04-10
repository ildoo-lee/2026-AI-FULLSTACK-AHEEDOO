package com.the703.days;

import java.util.Scanner;

public class Day012_lid {

	public static void main(String[] args) {
		//변수
		Scanner scanner = new Scanner(System.in);
		int avg = 0;
				
		//입력
		System.out.print("평균점수 입력>");
		avg = scanner.nextInt();
				
				
		//1. if ver.
		     if(avg <=100 && avg >= 90){System.out.println("A");}
		else if(avg < 90 && avg >= 80) {System.out.println("B");}
		else if(avg < 80 && avg >= 70) {System.out.println("C");}
		else                           {System.out.println("F");}
		
		int x = avg/10;     
		//2. switch ver.
		switch(x) {
		    case 10 : System.out.println("A");break;
			case 9  : System.out.println("A");break;
			case 8  : System.out.println("B");break;
			case 7  : System.out.println("C");break;
			default : System.out.println("F");break;
		}
		System.out.println();
		
		
		//3. for , while, do while ver.
		
		for(int l = 1 ; l <= 3 ; l++) {System.out.print(l);}
		System.out.println();
		
		int m = 1;
		while(m <= 3) {System.out.print(m); m++;}
		System.out.println();
		
		int n = 1;
		do{System.out.print(n); n++; } while(n <= 3);
		System.out.println();
		
		
		//4. 이중 for
		for(char y = 'a'; y<='d'; y++) {
			System.out.println();
			for(int r = 1 ; r <= 4 ; r++) {System.out.print('★');}
		}
		
		

	}

}
