package com.the703.basic005_ex;

import java.util.Scanner;

public class IfEx003 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 변수
		Scanner sc = new Scanner(System.in);
		int a = 0;
				
		System.out.println();
		// 입력
		System.out.print("숫자를 입력하세요>");
		a = sc.nextInt();
				
				
		// 처리
				
		System.out.println();
		// 출력
		     if(a == 1) {System.out.println("one");}
		else if(a == 2) {System.out.println("two");}
		else if(a == 3) {System.out.println("three");}
		else            {System.out.println("1,2,3이 아니다");}
		     
		System.out.println();     
		// 삼항연산자
		System.out.println(a == 1 ? "one" 
				:          a == 2 ? "two" 
				:          a == 3 ? "three"
			    :          "1,2,3이 아니다");
	}

}


/*

출력내용 : 숫자한개를 입력받아 
만약 1을 입력했다면   one ,   
만약 2을 입력했다면   two ,
만약 3을 입력했다면   three ,
1,2,3이 아니라면  1,2,3이 아니다를 출력하는 프로그램을 작성하시오.


*/