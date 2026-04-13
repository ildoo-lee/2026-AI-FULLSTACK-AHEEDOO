package com.the703.basic008_ex;

public class ArrayNewEx002 {

	public static void main(String[] args) {
		// 변수
		char[] arr = new char[5];
		char data = 'A'; 
		//입력
//		arr[0] = 'A';
//		arr[1] = 'B';
//		arr[2] = 'C';
//		arr[3] = 'D';
//		arr[4] = 'E';
		
//		arr[0]=data++ // data('A') 대입 ; 빠져나와서 증가
//		arr[1]=data++ // data('B') 대입 ; 빠져나와서 증가
//		arr[2]=data++ // data('C') 대입 ; 빠져나와서 증가
//		arr[3]=data++ // data('D') 대입 ; 빠져나와서 증가
//		arr[4]=data++ // data('E') 대입 ; 빠져나와서 증가
		
//		for(int i = 0 ; i < arr.length ; i++) {arr[i]=data++;}
//		// 처리 + 출력
//		for(int i = 0 ; i < arr.length ; i++) {System.out.println("%c\t", arr[i]); }
		
		for(int i = 0 ; i < arr.length ; i++) {
			arr[i] = data;
			System.out.printf("%s\t", arr[i]);
			data += 1;
		}

	}

}


//연습문제7)  array
//패키지명 : com.company.java007_ex
//클래스명 :  ArrayNewEx002
//    new 연산자 이용해서 배열만들기
//    1. 배열명 : arr     
//    2. 값 넣기 : A   B   C   D   E    for+length 이용해보기
//    3. for + length 로 출력