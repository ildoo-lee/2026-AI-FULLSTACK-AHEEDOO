package com.the703.basic008_ex;

public class Array2Ex002_lid {

	public static void main(String[] args) {
        
		int[][] arr2 = new int[2][3]; 
		
		
	
		int data = 101;
		for(int ch=0;ch<arr2.length;ch++,data=201) { // ,data=201 ch++ 이 증가할 때, data=201도 함께 증가
			for(int kan=0; kan<arr2[ch].length;kan++) {arr2[ch][kan] = data;
			System.out.print(data+"\t");
			data+=1;
			}
			System.out.println();
		}

	}

}


//연습문제2)  array
//패키지명 : ccom.the703.basic008_ex
//클래스명 :  Array2Ex002
//배열을 이용하여 다음의 프로그램을 작성하시오.   
//1. new 연산자 이용하여 다차원배열만들기
//2. for + length 이용해서 대입   
//3. for + length 이용해서 출력 
// 101   102   103
// 104    105    106