package com.the703.basic003_ex;

import java.util.Scanner;

public class DataTypeEx005 {

	public static void main(String[] args) {
		// GIGO
		// 변수
		int kor = -1, eng = -1, math = -1, total = -1;
		double avg = 0;
		Scanner sc = new Scanner(System.in);
		
		
		// 입력
		System.out.print("국어점수를 입력하시오 >");
		kor = sc.nextInt();
		
		System.out.print("영어점수를 입력하시오 >");
		eng = sc.nextInt();
		
		System.out.print("수학점수를 입력하시오 >");
		math = sc.nextInt();
		
		// 처리
		total = kor + eng + math;
		avg = total / 3f;  // 정수/정수 10/3 정수나온다
		// avg = total / 3.0; 이것도 된다.
		
		
		// 출력
		System.out.println();
		System.out.printf("총점 : %d\n", total);
		System.out.printf("평균 : %.2f\n", avg);

	}

}

/*
Scanner이용해서  성적처리를 입력받고 출력하시오.
국어점수를 입력하시오.  _입력받기    100 
영어점수를 입력하시오.  _입력받기    100 
수학점수를 입력하시오.  _입력받기    99

총점 :  299
평균 :  99.67

*/