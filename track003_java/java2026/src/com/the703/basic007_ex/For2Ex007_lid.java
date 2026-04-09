package com.the703.basic007_ex;

public class For2Ex007_lid {

	public static void main(String[] args) {
		
		//ver1
		System.out.print(4);System.out.print(4);System.out.print(4);System.out.print(4);System.out.println();
		System.out.print(3);System.out.print(2);System.out.print(3);System.out.print("");System.out.println();
		System.out.print(2);System.out.print(2);System.out.print("");System.out.print("");System.out.println();
 		System.out.print(1);System.out.print("");System.out.print("");System.out.print("");System.out.println();
//		
//		
//		
//		//ver2
 		System.out.println();
		for(int i=1;i<=4;i++){System.out.print(4);}
		System.out.println();
		for(int i=1;i<=3;i++){System.out.print(3);}
		System.out.println();
		for(int i=1;i<=2;i++){System.out.print(2);}
		System.out.println();
		for(int i=1;i<=1;i++){System.out.print(1);}
		System.out.println();
		
		//ver3
		System.out.println();
		for(int x=4 ; x>=1 ; x=x-1) {
			for(int i=1 ; i<=x ; i++) {System.out.print(x);}
			System.out.println();
		}

	}

}


/*

4444
333
22
1

*/