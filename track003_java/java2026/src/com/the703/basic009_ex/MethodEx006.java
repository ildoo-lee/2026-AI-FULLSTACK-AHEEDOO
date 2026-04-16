package com.the703.basic009_ex;

import java.util.Scanner;

public class MethodEx006 {
	//public static 리턴값 메서드명(재료) {해야할 일}
	public static int max(int a, int b, int c) {
		     if(a>=b && a>=c) {return a;}
		else if(b>=a && b>=c) {return b;}
		else                  {return c;}
						
	}
	
	
	public static void main (String[] args) {
		Scanner scanner = new Scanner (System.in);
		int a=0,b=0,c=0;
		
		System.out.print("숫자1> "); a= scanner.nextInt();
		System.out.print("숫자2> "); b= scanner.nextInt();
		System.out.print("숫자3> "); c= scanner.nextInt();
		
		int res3=max(a,b,c);
		System.out.println("최대값: " + res3);
		
		
		
	}// end main

}//class

/*
세개의 숫자를 입력받아 최대값을 출력하는 메서드를 작성하시오

public static void main (String[] args) {
int a=0,b=0,c=0;
Scanner scanner = new Scanner (System.in);
System.out.print("숫자1>"); a= scanner.nextInt();
System.out.print("숫자2>"); b= scanner.nextInt();
System.out.print("숫자3>"); c= scanner.nextInt();
int res3=max(a,b,c);
System.out.println("최대값: " + res3);
}// end main


 
숫자1 >3
숫자2 >7
숫자3 >5
최대값 : 7

*/