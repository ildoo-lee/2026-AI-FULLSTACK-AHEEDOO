package com.the703.basic009_ex;

public class MethodEx003 {
	
	public static int return_num() {return 1;}
	
	public static double return_float() {return 3.3333;}
	
	public static String mycolor() {return "PURPLE";}
	
	public static String jangsu() {return "★★★★★";}
	
	//public static int myadd(int a, int b) {return a+b;}
	//가장 아래 참조.. 별도로 작성할 수도 있음. 같은 class 안에 있으니, 위치상관없음
	
	public static String myban(char name){ // name - A, B 이외도 else로 추가해줘야 에러가 안남
		     if(name == 'A') {return "노랑조";}
		else if(name == 'B') {return "주황조";}
		else                 {return "";}
		}
	//ver2  삼항으로도 가능 {return name=='A'? "노랑조" : name=='B'? "주황조" : "";}
	
	public static String stdId(int a) {return "G"+a;}
	
	public static char stdAvg(int j) {
			 if(j >= 90) {return 'A';}
		else if(j >= 80) {return 'B';}
		else if(j >= 70) {return 'C';}
		else             {return 'D';}
		}
	//ver2   return avg<70? 'D' : avg<80? 'C' : avg<90? 'B' : avg<=100? 'A' : '';
	
	
	//////////////////////////////////////////////////////////////////////
	public static void main(String[] args) {
		 
		//public static 리턴값 메서드명(재료) {해야할 일}
		System.out.println("1. 내가 좋아하는 숫자: " + return_num()); // 1을 결과값으로 줌
		//public static 1   return_num() {1을 결과값으로 줌}
		//public static int return_num() {return 1;}
		
		//public static 리턴값 메서드명(재료) {해야할 일}
		System.out.println("2. 10/3.0을 실수로 표현: " + return_float());  // 3.3333을 결과값으로 줌
		//public static float return_float() {return 3.3333;}
		
		
		//public static 리턴값 메서드명(재료) {해야할 일}		
		System.out.println("3. BEST COLOR: " + mycolor());      // PURPLE을 결과값으로 줌
		//public static String mycolor() {PURPLE}
		
		
		//public static 리턴값 메서드명(재료) {해야할 일}
		System.out.println("4. 장수돌침대 별이: " + jangsu());        // ★★★★★을 결과값으로 줌  
		//public static String jangsu() {★★★★★}
		
		
		//public static 리턴값 메서드명(재료) {해야할 일}
		System.out.println("5. 10+20 = " + myadd(10,20));       // 두숫자를 더한값을 결과값으로 줌  
		//public static int myadd(10,20) {10+20}
		
		
		System.out.println("6. 반(노랑조/주황조)= " + myban('B'));  // A이면 노랑조 ,  B이면 주황조
		//public static char myban('B') {A이면 노랑조 ,  B이면 주황조}
		
		
		System.out.println("7. 당신의 학번은? " + stdId(1111));   // G하고 넣어준 학번 나오게
		//public static String stdId(1111) {G1111}
		
		
		
		System.out.println("8.당신의 평균은? " + stdAvg(88));    
		//public static int stdAvg(88) {90점이상이면 A ,  80점이상이면 B ,  70점이상이면 C , 아니라면  D}
		
		// 90점이상이면 A ,  80점이상이면 B ,  70점이상이면 C , 아니라면  D

	}//main
    //////////////////////////////////////////////////////////////////////
    
	// public static int myadd(int a, int b) {return a+b;}
	public static int myadd(int a, int b) {
		//변수
		int result=0;
		//입력
		//처리
		result=a+b;
		//출력
		return result;
	}//int
	
	
}//class


//연습문제3)  method
//패키지명 : com.the703.basic009_ex
//클래스명 :  MethodEx003
//
//System.out.println("1. 내가 좋아하는 숫자    :" + return_num());    // 1을 결과값으로 줌
//System.out.println("2. 10/3.0을 실수로 표현 :" + return_float());  // 3.3333을 결과값으로 줌
//System.out.println("3. BEST COLOR        :" + mycolor());      // PURPLE을 결과값으로 줌
//System.out.println("4. 장수돌침대 별이       :" + jangsu());        // ★★★★★을 결과값으로 줌  
//System.out.println("5. 10+20= " + myadd(10,20));       // 두숫자를 더한값을 결과값으로 줌  
//System.out.println("6. 반(노랑조/주황조)=" + myban('B'));  // A이면 노랑조 ,  B이면 주황조
//System.out.println("7. 당신의 학번은?" + stdId(1111));   // G하고 넣어준 학번 나오게
//System.out.println("8.당신의 평균은?" + stdAvg(88));    
//// 90점이상이면 A ,  80점이상이면 B ,  70점이상이면 C , 아니라면  D
//
//출력결과 :
//1. 내가 좋아하는 숫자    : 1
//2. 10/3.0을 실수로 표현 : 3.3333
//3. BEST COLOR        : PURPLE
//4. 장수돌침대 별이       : ★★★★★
//5. 10+20= 30
//6. 반(노랑조/주황조)= 나는 노랑조
//7. 당신의 학번은? G1111
//8. 당신의 평균은? B