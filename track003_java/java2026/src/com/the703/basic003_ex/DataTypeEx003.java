package com.the703.basic003_ex;

import java.util.Scanner;

public class DataTypeEx003 {

	public static void main(String[] args) {
		// GIGO
		// 변수
		int year = -1;
		Scanner sc = new Scanner(System.in);

		// 입력
		System.out.print("태어난 년도를 입력하세요. >");
		year = sc.nextInt();
		
		// 처리
		year = 2026 - year;
		
		// 출력
		System.out.println("당신의 나이는 " + year + "입니다.");
	}

}


/*
Scanner이용해서 태어난 년도를 입력받아 나이 계산하기
태어난 년도를 입력하세요. >
2000
당신의 나이는 25살 입니다.

*/