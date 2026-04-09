package com.the703.days;

import java.util.Scanner;

public class Day011 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		char ch= '\u0000';
		
		System.out.println("a, b, c 중에 입력>");
		ch = scanner.next().charAt(0);
		
		     if(ch == 'a') {System.out.println("apple");}
		else if(ch == 'b') {System.out.println("banana");}
		else if(ch == 'c') {System.out.println("coconut");}
		     
		     switch(ch) {
		      case 'a' : System.out.println("apple");break;
		      case 'b' : System.out.println("banana");break;
		      case 'c' : System.out.println("coconut");break;
		     
		     }
		     
		     
		     
		     for(int l=1 ; l<=5 ; l++) {System.out.print(l + "\t");}
		     
		     System.out.println();
		     int m = 1;
		     while( m <= 5) {System.out.print(m + "\t"); m++;}
		     
		     System.out.println();
		     int n = 1;
		     do {System.out.print(n + "\t"); n++;}while( n <= 5);
		

	}

}
