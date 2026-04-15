package com.the703.basic008_ex;

public class Array2Ex001_lid {

	public static void main(String[] args) {
//		int[][] arr2={{100,200,300},{400,500,600}};
		
		int[][] arr2 = new int[2][3]; 
		
		
//		for(int kan=0; kan<arr2[0].length;kan++) {arr21[0][kan] = data;   data+=100;}
//		for(int kan=0; kan<arr2[1].length;kan++) {arr21[1][kan] = data;   data+=100;}
		
		int data = 100;
		for(int ch=0;ch<arr2.length;ch++) {
			for(int kan=0; kan<arr2[ch].length;kan++) {arr2[ch][kan] = data;
			System.out.print(data+"\t");
			data+=100;
			}
			System.out.println();
		}
		
		

	} // main

} // class


//연습문제1)  array
//패키지명 : com.the703.basic008_ex
//클래스명 :  Array2Ex001
//배열을 이용하여 다음의 프로그램을 작성하시오.   
//  
//   int[][] arr2={{100,200,300},{400,500,600}};
//
//   이중for+ length 이용해서 출력하기   
//
