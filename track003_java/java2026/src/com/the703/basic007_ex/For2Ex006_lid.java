package com.the703.basic007_ex;

public class For2Ex006_lid {

	public static void main(String[] args) {
		//ver1
		System.out.print(1);System.out.print("");System.out.print("");System.out.print("");System.out.println();
		System.out.print(2);System.out.print(2);System.out.print("");System.out.print("");System.out.println();
		System.out.print(3);System.out.print(3);System.out.print(3);System.out.print("");System.out.println();
		System.out.print(4);System.out.print(4);System.out.print(4);System.out.print(4);System.out.println();
		
		
		//ver2
//		System.out.println();
//		for(int a=1; a <=4 ;a++ ) {System.out.print(a <= 1 ? 1 : "");}
//		System.out.println();
//		for(int a=1; a == 2 ;a++ ) {System.out.print(a);}
//		System.out.println();
//		for(int a=1 ; a == 3 ;a++ ) {System.out.print(a);}
//		System.out.println();
//		for(int a=1 ; a == 4 ;a++ ) {System.out.print(a);}
//		System.out.println();
		System.out.println();
		for(int i=1;i<=1;i++){System.out.print(1);}
		System.out.println();
		for(int i=1;i<=2;i++){System.out.print(2);}
		System.out.println();
		for(int i=1;i<=3;i++){System.out.print(3);}
		System.out.println();
		for(int i=1;i<=4;i++){System.out.print(4);}
		System.out.println();
		
		//ver3
		System.out.println();
		for(int x=1 ; x<=4 ; x++) {
			for(int i=1 ; i<=x ; i++) {System.out.print(x);}
			System.out.println();
		}

	}

}


/*

패키지명 : ccom.the703.basic007
클래스명 :  For2Ex006   (이중for 이용)

1
22
333
4444

*/