package com.the703.basic006_ex;

public class ForEx004_1 {

	public static void main(String[] args) {
		// 변수
		int n=0;
		// 입력
		// 처리
		// 출력
		for(int a = 1; a <=20 ; a++) {
			if(!(a%2==0 || a%3==0)) {n=n+1;}      //(2의 배수도 아니고 3의 배수도 아닌 수들) {총합}
		}
		System.out.println(n);

	}

}

/*
문제: 1부터 20까지의 정수 중에서 2의 배수도 아니고 3의 배수도 아닌 수들의 총합을 출력하세요.

힌트: 논리 연산자(&& 또는 ||)를 활용해 보세요.

목표: 여러 조건을 동시에 체크하는 법 익히기.  
 
 */