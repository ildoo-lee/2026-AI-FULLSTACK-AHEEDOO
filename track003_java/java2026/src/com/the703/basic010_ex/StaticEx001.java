package com.the703.basic010_ex;

//1. 클래스는 부품객체이다
//2. 상태(멤버변수 : 인스턴스변수, 클래스변수 -static)와 행위(인스턴스메서드, 클래스 메서드 - static)

class Area1{
	//Area1.pi             (클래스변수 - static)
	//Area1.rect(10,5)     (클래스메서드 - static)
	
	
	//멤버변수:
	static double pi=3.14159; // 명시적 초기화
	
	static int rect(int num3, int num4) {return num3*num4;}
	
	static double triangle(double num5, double num6) {return (num5*num6)/2;}
	//static double triangle(int num5, int num6) {return (num5*num6)/2.0;}
}

public class StaticEx001 {

	public static void main(String[] args) {
		System.out.println("원의 면적    : " + 10 * 10 * Area1.pi);
		
		System.out.println("사각형의 면적 : " + Area1.rect(10, 5));
		//                 public static 리턴값 메서드명()
        //                 public static 50.0 rect(10,5){사각형의 면적}
		//                 public static 50.0 rect(int a,int b){return a*b;사각형의 면적}
		
		System.out.println("삼각형의 면적 : " + Area1.triangle(10, 5));
	}
}


/*
연습문제1)  static
패키지명 : com.the703.basic010_ex
클래스명 :  StaticEx001

-- class Area1 작성해주세요   ※ pi값은 3.14159

public class StaticEx001{
  public static void main(String[] args) {  
   System.out.println("원의 면적    : " + 10 * 10 * Area1.pi);
   System.out.println("사각형의 면적 : " + Area1.rect(10, 5));
   System.out.println("삼각형의 면적 : " + Area1.triangle(10, 5));
  }
} 

출력내용 : 
원의 면적    : 314.159
사각형의 면적 : 50.0
삼각형의 면적 : 25.0



*/