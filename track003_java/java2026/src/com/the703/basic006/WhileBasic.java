package com.the703.basic006;

public class WhileBasic {

	public static void main(String[] args) {
		// for  1 2 3
		
		System.out.println();
		//ver. 1
		System.out.println(1);
		System.out.println(2);
		System.out.println(3);
		
		
		
		System.out.println("ver-1 for");
		//ver. 2
		for(int a = 1 ; a <= 3 ; a++) {System.out.println( a );}
		
		System.out.println("ver-2 while");
		int a = 1;
		while( a <= 3) {System.out.println( a ); a++;}
		
		
		System.out.println();
		System.out.println("ver-3 do while");
		int b = 1;
		do{System.out.println( b ); b++;}while( b <= 3);
		
		
		
	}

}
