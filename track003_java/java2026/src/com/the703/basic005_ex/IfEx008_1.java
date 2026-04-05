package com.the703.basic005_ex;

import java.util.Scanner;

public class IfEx008_1 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		// 변수
		int kor = -1, eng = -1, math = -1, total = -1;
		double avg;
		String no = "";
		String pass = "";
		String level = "";
		String jang = "";
		
		
		// 입력
		System.out.println("학번을 입력하세요. >");
		no = sc.next();
		
		System.out.println("국어점수를 입력입력하세요. >");
		kor = sc.nextInt();
		
		System.out.println("영어점수를 입력하세요. >");
		eng = sc.nextInt();
		
		
		System.out.println("수학점수를 입력하세요. >");
		math = sc.nextInt(); 
				
		// 처리
		
		total = kor + eng + math;
		avg = total / 3f;
		
				
		// 삼항연산자
		pass = avg >= 60 && kor >= 40 && eng >= 40 && math >= 40 ? "합격" : "불합격" ;
		
		level = avg >= 90 ? "수" 
		    :   avg >= 80 ? "우"	
		    :   avg >= 70 ? "미" 
		    :   avg >= 60 ? "양" :  "가" ;
		
		jang = avg >= 95 ? "장학생" : "장학생 아니다";
		
		
		
		// 출력
		System.out.println("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		System.out.printf("학번\t국어\t영어\t수학\t총점\t평균\t합격여부\t레벨\t장학생\n");
		System.out.println("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		System.out.printf("%s\t%d\t%d\t%d\t%d\t%.2f\t%s\t%s\t%s", no, kor, eng, math, total, avg, pass, level, jang);

		
		
	}

}

/*

4. eclipse 열어서 작성해주세요! [20분]

패키지명 : com.the703.days
클래스명 :  Day008
출력내용 :  성적처리 프로그램입니다.
1. 총점 구하기
2. 평균 구하기
3. 평균이 60점이상이고  각과목이 40점 미만이면 아니라면 합격/ 아니면 불합격
4. 평균이 95점이상이면 장학생
5. 평균이  90점이상이면 수, 80점이상이면 우, 70점이상이면 미, 60점이상이면 양, 아니라면 가 

학번 입력 > std111
국어점수 입력 > 100
수학점수 입력 > 100
영어점수 입력 > 99
======================================================== 
학번   국어   영어   수학   총점   평균   합격여부   레벨   장학생
======================================================== 
std111   100   100   99   299   99.67   합격   수   장학생

*/