package com.the703.basic006_ex;

public class ForEx004_2 {

	public static void main(String[] args) {
		// 변수
		int n = 3, a = 0;
		
		// 입력
		// 처리
		// 출력
		
		for(;;) {
				
			for(int i = 1 ; i <= 5 ; i++) {System.out.printf("%d*%d=%d\n", n, i, ( a = n * i));
			System.out.println();
			
			}
			n = n + 2;
			if(n > 9) break;
		}
		
		
	}

}

/*
2. 중첩 반복문과 구구단 (중급)
문제: 구구단 중 **홀수단(3, 5, 7, 9단)**만 출력하세요. 단, 각 단에서 곱하는 수(i)가 5까지만 나오게 하세요.

출력 예시:
3 * 1 = 3 ... 3 * 5 = 15 (여기서 멈추고 다음 5단으로)

힌트: for문 안에 for문을 쓰고, 특정 조건에서 break를 사용해 보세요.

목표: 중첩 루프와 흐름 제어(break) 익히기.

*/