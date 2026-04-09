package com.the703.basic007_ex;

public class For2Ex003_lid {

	public static void main(String[] args) {
	
		//ver2
		for(int a=1 ; a<=4 ; a++) {System.out.print(a <= 1 ? '#' : "");}
		System.out.println();
		for(int a=1 ; a<=4 ; a++) {System.out.print(a <= 2 ? '#' : "");}
		System.out.println();
		for(int a=1 ; a<=4 ; a++) {System.out.print(a <= 3 ? '#' : "");}
		System.out.println();
		for(int a=1 ; a<=4 ; a++) {System.out.print(a <= 4 ? '#' : "");}
		System.out.println();
		
		//ver3
		for(int x=1 ; x<=4 ; x++) {
			System.out.println();
			for(int a=1 ; a<=4 ; a++) {System.out.print(a <= x ? '#' : "");}
		}
		

	}

}

/*

패키지명 : ccom.the703.basic007
클래스명 :  For2Ex003   (이중for 이용)

#
##
###
####

*/

