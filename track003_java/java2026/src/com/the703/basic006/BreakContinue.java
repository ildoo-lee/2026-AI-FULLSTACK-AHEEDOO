package com.the703.basic006;

import java.util.Scanner;

public class BreakContinue {

	public static void main(String[] args) {
		
		// ver-0
		// { int a=1; System.out.println(a); } // 영역
		// a=2; //  why? x 위 영역에서나 a를 쓸 수 있어.
		
		
		// ver-1 for 반복
		// 반복해  영역(여기서부터               여기까지)
		//for(;;) {System.out.println(1);}
		
		
		// ver-2 반복 빠져나오기
		for( int i = 1 ; i < 5 ; i++ ) { // i++ ){ // for( 초기값 ; 조건 ; 증감 )
			if( i == 3 ) {break;} // 나가
			System.out.println(i);
				
		}

		///////////////////////////////////
		System.out.println();
	    
	    for( int i = 1 ; i < 5 ; i++ ) { // i++ ){ // (   ; 조건  ;   )
		    if( i == 3 ) {continue;} // skip:밑에꺼 진행하지 마 ← 밑에꺼(System.out.println(i);)
	    	System.out.println(i);
		    
	    }
		
	    int a = -1;
	    Scanner sc = new Scanner(System.in);
		// ver-3
	    for(;;) {
	    	System.out.println("1 입력");
	    	a = sc.nextInt();
	    	if(a == 1) {break;} // 잘 입력하면 나가~~~
	    }
	}

}
