package com.the703.days;

public class Day016_lid_1 {

	public static void main(String[] args) {
		// 1. new 연산자 이용하여 다차원배열만들기
		int[][] arr = new int[2][3];
		
		arr[0][0] = 1;
		arr[0][1] = 2;
		arr[0][2] = 3;
		arr[1][0] = 4;
		arr[1][1] = 5;
		arr[1][2] = 6;
		
		
		//2. for + length 이용해서 대입   
		for(int a = 0; a <arr.length ; a++) {
			for(int b = 0; b <arr[0].length ; b++) {
				System.out.print(arr[a][b]+"\t");
			}
			System.out.println();
		}
			
		
		//3. for + length 이용해서 출력 
		//   101   102   103
		//   104   105   106
		int[][] arr2 = new int[2][3];
		
		int data=101;
		for(int c = 0 ; c <arr2.length ; c++) {
			for(int d = 0; d <arr2[0].length ; d++) {
				System.out.print(data +"\t"); 
				data+=1;
				
			}
			System.out.println();
		}
		
		
		
		

	} // main

} // class