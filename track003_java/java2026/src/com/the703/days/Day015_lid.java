package com.the703.days;

public class Day015_lid {

	public static void main(String[] args) {
		//1. for, while, do while
		for(int a = 3 ; a >= 1 ; a-- ) {System.out.print(a+"\t");}
		System.out.println();

		int b = 3 ;
		while( b >= 1) {System.out.print(b+"\t");  b-- ;}
		System.out.println();
		
		int c = 3 ;
		do {System.out.print(c+"\t"); c-- ;}while( c >= 1 );
		System.out.println();
		
		//2. 이중 for 버전
		for(int d=1;d<=3;d++) {
			for(int e=1;e<=3;e++) {
				if(e<=d) {System.out.print("★");}
				}
			System.out.println();
		}
		
		
		//3.  1차원배열      new 연산자 이용해서 배열만들기
//	    1. 배열명 : arr     
//	    2. 값 넣기 :   A B C        for+length 이용서 값 대입
//	    3. for + length 로 출력 

		char[] arr = new char[3];
		
//		arr[0] = 'A';
//		arr[1] = 'B';
//		arr[2] = 'C';
		
		System.out.println(arr.length);
		for(int f = 0 ; f <arr.length ; f++ ) {
			arr[f] = (char) ('A' + f) ;
			System.out.print(arr[f]);
			}
		
		
		

	} // main

} // class

//■ JAVA
//1.  for, while , do while을 이용해서 문제를 풀으시오.
//     3   2   1
//
//2 이중 for 버전
//다음과 같은 모양을 출력하는 프로그램을 작성하시오.
//★★★
//★★
//★
//
//3.  1차원배열      new 연산자 이용해서 배열만들기
//    1. 배열명 : arr     
//    2. 값 넣기 :   A B C        for+length 이용서 값 대입
//    3. for + length 로 출력 
