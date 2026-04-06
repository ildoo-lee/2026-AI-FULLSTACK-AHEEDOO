package com.the703.basic005_ex;

import java.util.Scanner;

public class IfEx008_5 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		// 변수
		int kor = -1, eng = -1, math = -1, total = -1;
		double avg;
		String  no = "", pass = "", level = "", jang = "";
		
		
		// 입력
		System.out.println("학번 입력 >");
		no = sc.next();
		
		System.out.println("국어 입력 >");
        kor = sc.nextInt();
         	
        System.out.println("영어 입력 >");
	    eng = sc.nextInt();
	    		
	    System.out.println("수학 입력 >");
	    math = sc.nextInt();
	    

		
		
		
		
		// 처리
		total = kor + eng + math;
		avg = total / 3f;
				
		pass = avg >= 60 && kor >= 40 && eng >= 40 && math >= 40 ? "합격" : "불합격" ;
		
		level = avg >= 90 ? "수"
			:   avg >= 90 ? "우"   
			:	avg >= 90 ? "미"
			:	avg >= 90 ? "양"  : "가" ;
			
		jang = avg >= 95 ? "장학생" : "장학생 아니다";	
			
					
		// 출력
		System.out.println("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		System.out.printf("학번\t국어\t영어\t수학\t총점\t평균\t합격여부\t레벨\t장학생\n");
		System.out.println(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		System.out.printf("%s\t%d\t%d\t%d\t%d\t%.2f\t%s\t%s\t%s", no, kor, eng, math, total, avg, pass, level, jang);

	}

}

//Q1 
// int x = -1;
// if( x >= 60 ){}

//Q2
// char ch = 'A';
// if( ch == 'A' || ch == 'a' ){}

//Q3
//char ch = '5';
//if( ch >= '0' && ch <= '9' ){}

//Q4
//char ch = 'A';
//if( ch >= 'A' && ch <= 'Z' ){}
