package com.the703.basic009_ex;

import java.util.Scanner;

    //public static 리턴값 메서드명(재료) {해야할 일}
    public static int abs(int a) {
    		
    	}


public class MethodEx005 {

	public static void main(String[] args) {
		
		int res1=0; 
		Scanner scanner = new Scanner (System.in);
		System.out.print("절대값을 구하는 프로그램입니다.\n숫자를 입력하세요");

		res1=abs(scanner.nextInt());
		System.out.println(res1);

	}//main

	

}//class


/*
절대값

한개의 숫자를 입력받아 절대값을 출력해주는 메서드를 작성하시오.
public static void main (String[] args) {
int res1=0; Scanner scanner = new Scanner (System.in);
system.out.print("절대값을 구하는 프로그램입니다. \n숫자를 입력하세요");

res1=abs(scanner.nextInt());
System.out.println(res1);
}// end main


절대값을 구하는 프로그램입니다.

숫자를 입력하세요-1

1
*/