package com.the703.basic006_ex;

public class ForEx004 {

	public static void main(String[] args) {
		//변수
		int n = 0;
				
		//입력
			
		
		//처리+출력
		for(int a = 1 ; a <= 10 ; a++) {
			if( a%3 == 0) { n = n + 1; } // (3으로 나눴을 때, 나머지가 0){누적 갯수}
			
		}
		System.out.println(n);
		
		
	}

}


/*
연습문제4)  
패키지명 : com.company.java005_ex
클래스명 :  ForEx004
출력내용 :   for 이용
1~10까지 3의 배수 갯수를 출력  
*/