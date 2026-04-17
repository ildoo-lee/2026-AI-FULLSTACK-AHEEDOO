package com.the703.basic009_ex;

import java.util.Scanner;

public class MethodEx004_lid{
	//public static 리턴값 메서드명(재료) {해야할 일}
	//System.out.println("5. 10+20 = " + myadd(10,20));       // 두숫자를 더한값을 결과값으로 줌  
	//public static int myadd(10,20) {10+20}
	
	public static int process_total(int kor, int eng, int math){
		int total = kor + eng + math;
		return total;
	}
	
	public static float process_avg(int total) {
		float avg = total / 3f;
		return avg;
	}
	//public static 리턴값 메서드명(재료) {해야할 일}
	public static String process_pass(double avg , int kor, int eng, int math) { 
	//합격  평균이60이상이고, 각각 국어, 영어, 수학40이상/불합격/재시험-각각 40미만인게 있다면
	return avg >=60 && kor >= 40 && eng >= 40 && math >= 40 ? "합격" : "불합격/재시험";	
	}
	
	
	public static String process_scholar(double avg) {
		String jang = avg >= 95 ? "장학생" : "장학생 아니다" ;
		return jang;
	}

	public static String process_star(float avg) {
		String star = avg == 100 ? "★★★★★★★★★★"
				   :   avg >= 90 ? "★★★★★★★★★" 
			       :   avg >= 80 ? "★★★★★★★★"
				   :   avg >= 70 ? "★★★★★★★" : "" ;
		return star;
	}
	
	public static void process_show(String name, int kor, int eng, int math, int total, float avg, String pass, String jang, String star) {
		System.out.println(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
        System.out.printf("이름\t국어\t영어\t수학\t총점\t평균\t합격여부\t장학생\t\t레벨\n");
        System.out.println(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
        System.out.printf("%s\t%d\t%d\t%d\t%d\t%.2f\t%s\t%s\t%s", name, kor, eng, math, total, avg, pass, jang, star );
	}
	
	////////////////////////////////////////////////////////////////////////////
   public static void main(String[] args) {
   /////////////////////(1)  변수
      String name  = ""; 
      int kor, eng, math, total ;
      float avg = 0.0f; 
      String pass = "";
      String jang = "";
      String star= "";  
      Scanner scanner = new Scanner(System.in);
      
      /////////////////////(2) 입력 : 이름, 국어, 영어, 수학점수를 입력받으시오.
            
      System.out.print("이름 입력 >");
      name = scanner.next();
      	    			    
      System.out.print("국어점수 입력 >");
	  kor = scanner.nextInt();
	
	  System.out.print("영어점수 입력 >");
	  eng = scanner.nextInt();
	
	  System.out.print("수학점수 입력 >");
	  math = scanner.nextInt();
      
      
      /////////////////////(3) 처리 : 
      total = process_total(kor, eng, math);    // 1. 총점처리
      
      avg = process_avg(total);    //2.  평균처리
      
      ////////3.  합격  평균이60이상이고, 각각 국어, 영어, 수학40이상/불합격/재시험-각각 40미만인게 있다면 
  	  //public static String process_pass(avg , kor, eng, math) { 합격  평균이60이상이고, 각각 국어, 영어, 수학40이상/불합격/재시험-각각 40미만인게 있다면} 
      pass = process_pass(avg , kor, eng, math);  
      
      //////// 4. 평균이 95점이상이면 장학생
      jang = process_scholar(avg); 
      
      //////// 5. 평균점수대로 별표 붙이기 , 예) 70점대이면 별7개, 80점대이면 별8개, 90점대이면 별9개 , 100점이면 별10개 
      star = process_star(avg);  
      
      
      /////////////////////(4) 출력
      //public static void process_show(name, kor, eng, math, total, avg, pass, jang, star) {출력}
      process_show(name, kor, eng, math, total, avg, pass, jang, star);
    
      
   }// end main

 

   
}// end class


/*
연습문제4)  method
패키지명 : com.the703.basic009_ex
클래스명 :  MethodEx004

public class MethodEx004{ 
   public static void main(String[] args) {
   /////////////////////(1)  변수
      String name  = ""; 
      int kor, eng, math, total ;
      float avg = 0.0f; 
      String pass = "";
      String jang = "";
      String star= "";  
      Scanner scanner = new Scanner(System.in);
      
      /////////////////////(2) 입력 : 이름, 국어, 영어, 수학점수를 입력받으시오.
   
      /////////////////////(3) 처리 : 
      total = process_total(kor , eng, math);    // 1. 총점처리
      
      avg = process_avg(total);    //2.  평균처리
      
      ////////3.  합격  평균이60이상이고, 각각 국어, 영어, 수학40이상/불합격/재시험-각각 40미만인게 있다면  
      pass = process_pass(avg , kor, eng, math);  
      
      //////// 4. 평균이 95점이상이면 장학생
      jang = process_scholar(  avg  ); 
      
      //////// 5. 평균점수대로 별표 붙이기 , 예) 70점대이면 별7개, 80점대이면 별8개, 90점대이면 별9개 , 100점이면 별10개 
      star = process_star(avg);  
      
      
      /////////////////////(4) 출력
      process_show(name, kor, eng, math, total, avg, pass, jang, star);
    
      
   }// end main
 
   
}// end class

 
      ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
      이름      국어   영어   수학   총점  평균    합격여부   장학생   랭킹
      --------------------------------------------------------------------------------------------
      아이언맨   100   100   100   300    100.0    합격      장학생   **********
      --------------------------------------------------------------------------------------------

*/