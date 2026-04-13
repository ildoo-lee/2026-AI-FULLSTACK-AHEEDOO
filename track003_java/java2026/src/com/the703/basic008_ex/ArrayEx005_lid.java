package com.the703.basic008_ex;

public class ArrayEx005_lid {

	public static void main(String[] args) {
		
		char[] ch = {'B' , 'a' , 'n' , 'a', 'n' , 'a'};
		int count1 =  0, count2 =  0;;
		
		System.out.println("전체 갯수 " + ch.length);
		
		
		for(int a = 0 ; a < ch.length ; a++) {
			     if(ch[a] >= 'A' && ch[a] <= 'Z') {count1++;}
			else if(ch[a] >= 'a' && ch[a] <= 'z') {count2++;}
		
		} // for
		System.out.println("대문자의 갯수는 " + count1);
		System.out.println("소문자의 갯수는 " + count2);

	} // main

} // class

//연습문제5)  array
//패키지명 : com.the703.basic008_ex
//클래스명 :  ArrayEx005
//    1. 배열명 : ch
//    2. 값 넣기 : 'B' , 'a' , 'n' , 'a', 'n' , 'a'
//    3. ch 배열에서 대문자의 갯수카운트, 소문자의 갯수 카운트


