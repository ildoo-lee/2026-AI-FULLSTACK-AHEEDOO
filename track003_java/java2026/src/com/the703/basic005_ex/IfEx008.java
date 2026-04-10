package com.the703.basic005_ex;

import java.util.Scanner;

public class IfEx008 {

	public static void main(String[] args) {
		       // 변수
		       int kor = -1, eng = -1, math = -1, total = -1;
		       double avg; // double은 쓰레기값이 없음
               String no;
               String pass = ""; // "초기값" <- 아무것도 값이 없으면 보여주는 값
               String level = ""; // 수,우,미,양,가
               String jang = ""; // 장학생 여부
               
			    
			    Scanner sc = new Scanner(System.in);
				// 입력 
			    			    
			    System.out.print("학번 입력 >");
			    no = sc.next();
			    
				// no = sc.next().charAt(0);
			    
				System.out.print("국어점수 입력 >");
				kor = sc.nextInt();
				
				System.out.print("영어점수 입력 >");
				eng = sc.nextInt();
				
				System.out.print("수학점수 입력 >");
				math = sc.nextInt();
				
				
				// 처리
				total = kor + eng + math;
				// avg = total / 3.0;
				// avg = total / 3f;
				
				// avg = (double)total / 3;
				// avg = total / 3.0;
				avg = total / 3f;
				
				pass = avg < 60                            ? "불합격" 
				   :   kor < 40 || eng < 40 || math < 40   ? "불합격" : "합격";
					
								
		        //     if ( avg >= 60 && kor >= 40 && eng >= 40 && math >= 40 ) {pass = "합격";}
		        //else                                                            {pass = "불합격";}

		        
		             if ( avg <= 100 && avg >= 90 ) {level = "수";}
		        else if ( avg <= 90 && avg >= 80 )   {level = "우";}
		        else if ( avg <= 80 && avg >= 70 )   {level = "미";}
		        else if ( avg <= 70 && avg >= 60 )   {level = "양";}
		        else                                {level = "가";}
		             
		        // 삼항연산자
		        //level = avg >= 90   ? "수" 
		        	//:   avg >= 80   ? "우"
		        	//:   avg >= 70   ? "미"
		        	//:   avg >= 60   ? "양" : "가";
		        
		        
		        
		        //     if ( avg >= 95 )               { jang = "장학생";}
		        //else                                { jang = "장학생 아니다";}
		        
		        // 삼항연산자
		        jang = avg >= 95 ? "장학생" : "장학생 아니다";     
		             
		        //System.out.println( avg >= 95   ? "장학생" 
		        //		:           avg >= 80   ? "우"
		             
		        // 출력 
		        
		        System.out.println(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		        System.out.printf("학번\t국어\t영어\t수학\t총점\t평균\t합격여부\t레벨\t장학생\n");
		        System.out.println(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		        System.out.printf("%s\t%d\t%d\t%d\t%d\t%.2f\t%s\t%s\t%s\n", no, kor, eng, math, total, avg, pass, level, jang);
		        
	}

}

/*
연습문제8)  
패키지명 : com.the703.basic005_ex
클래스명 :  IfEx007
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
============================================= 
학번   국어   영어   수학   총점   평균   합격여부   레벨   장학생
============================================= 
std111   100   100   99   299   99.67   합격   수   장학생

*/