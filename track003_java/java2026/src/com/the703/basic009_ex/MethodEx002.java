package com.the703.basic009_ex;

public class MethodEx002 {

	public static void test1(int a) {System.out.println(a);}
	
	public static void test2(double b) {System.out.println(b);}
	
	public static void hap(int c, int d) {
		
		int sum=0;
		for(c=3;c<=d;c++) {
			sum=sum+c;			
		    }
		    System.out.println(sum);
	}//hap
	
	public static void disp(int e, char f) {
		
		for(int g=1;g<e;g++) {
			System.out.print(f);
		    }			
	}//disp
	
	
	
	///////////////////////////////////////////////
	public static void main(String[] args) {
		test1(10);    //10 출력
        test2(1.2);   // 1.2 출력
        hap(3,5);     // 3+4+5한값  12 출력
        disp(7, '*');  // *******출력

	} // main
	////////////////////////////////////////////////

			
} // class



//연습문제2)  method
//패키지명 : com.the703.basic009_ex
//클래스명 :  MethodEx002
//다음과 같이 test1(), test2(), hap(), disp()메서드를 정의하시오.
//
//public static void main(String[] args) {
//    // public static  리턴값 메서드명(파라미터)
//    test1(10);    //10 출력
//     test2(1.2);   // 1.2 출력
//     hap(3,5);     // 3+4+5한값  12 출력
//     disp(7, '*');  // *******출력
//}