package com.the703.basic005_ex;

import java.util.Scanner;

public class IfEx008_3 {

	public static void main(String[] args) {
		
		// 변수
		int kor = -1, eng = -1, math = -1, total = -1;
		double avg;
		String no = "";
		String pass = "";
		String level = "";
		String jang = "";
		
		
		Scanner sc = new Scanner(System.in);
		// 입력
		System.out.println("학번 입력 >");
		no = sc.next();
		
		System.out.println("국어점수 입력 >");
		kor = sc.nextInt();
		
		System.out.println("영어점수 입력 >");
		eng = sc.nextInt();
		
		System.out.println("수학점수 입력 >");
		math = sc.nextInt();
		
		
		
		// 처리
		total = kor + eng + math;
		avg = total / 3f;
		
		pass = avg >= 60 && kor >= 40 && eng >= 40 && math >= 40 ? "합격" : "불합격"; 
				
		level = avg >= 90 ? "수" 
			:   avg >= 80 ? "우"
			:   avg >= 70 ? "미"
			:   avg >= 60 ? "양" : "가" ;
		
		jang = avg >= 95 ? "장학생" : "장학생 아니다" ;
		
		
		
		
		// 출력
		System.out.println(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		System.out.printf("학번\t국어\t영어\t수학\t총점\t평균\t합격여부\t레벨\t장학생\n");
		System.out.println(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		System.out.printf("%s\t%d\t%d\t%d\t%d\t%.2f\t%s\t%s\t%s", no, kor, eng, math, total, avg, pass, level, jang);

		
	}

}
