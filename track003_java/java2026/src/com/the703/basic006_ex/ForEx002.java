package com.the703.basic006_ex;

import java.util.Scanner;

public class ForEx002 { // 족보

	public static void main(String[] args) {
		//변수
		Scanner sc = new Scanner(System.in);
		int a = 0;
		
		//입력
		System.out.print("구구단 몇단이 궁금한가요?");
		a = sc.nextInt();
		
		//처리 + 출력
		for(int d = 1 ; d <= 9 ; d++) {
			System.out.printf("%d*%d=%d\n", a, d, a*d );
			
		}
		
		
		
	}

}

/*
연습문제2)  
패키지명 : com.company.java005_ex
클래스명 :  ForEx002
출력내용 :   for 이용

   사용자에게 단을 입력받아 해당하는 
   단을 출력해주는 프로그램을 작성하시오. FOR문을 이용하시오.

*/