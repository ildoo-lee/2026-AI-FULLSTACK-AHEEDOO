package com.the703.basic008_ex;

public class ArrayEx004_lid {

	public static void main(String[] args) {
		// 1. 배열명 : ch
		// 2. 값 넣기 : 'B' , 'a' , 'n' , 'a', 'n' , 'a'
		// 3. ch 배열에서 a의 갯수 3
		// 4. 출력된 화면 : a의 갯수 3
		char[] ch = {'B' , 'a' , 'n' , 'a', 'n' , 'a'};
		int count = 0;
		
		System.out.println("전체 갯수 " + ch.length);
		
		
		for(int a = 0 ; a < ch.length ; a++) {
			if(ch[a] == 'a') {count++;}
		
		} // for
		System.out.println("a의 갯수는 " + count);
		
		
	} // main

} // class

//	연습문제4)  array
//	패키지명 : com.the703.basic008_ex
//	클래스명 :  ArrayEx004
//	    1. 배열명 : ch
//	    2. 값 넣기 : 'B' , 'a' , 'n' , 'a', 'n' , 'a'
//	    3. ch 배열에서 a의 갯수 세기
//	    4. 출력된화면 :  a의 갯수 3  