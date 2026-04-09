package com.the703.basic007_ex;

public class For2Ex002_lid {

	public static void main(String[] args) {
		
		//ver-1 눈에 보이는 그대로
		System.out.print('@');System.out.print('#');System.out.print('#');System.out.print('#');System.out.println();
		System.out.print('#');System.out.print('@');System.out.print('#');System.out.print('#');System.out.println();
		System.out.print('#');System.out.print('#');System.out.print('@');System.out.print('#');System.out.println();
		System.out.print('#');System.out.print('#');System.out.print('#');System.out.print('@');System.out.println();
		
		//ver-2 칸정리
		System.out.println();
        for(int a=1;a<=4;a++) {System.out.print(a == 1 ? '@' :'#');}System.out.println();
		
		for(int b=1;b<=4;b++) {System.out.print(b == 2 ? '@' :'#');}System.out.println();
		
		for(int c=1;c<=4;c++) {System.out.print(c == 3 ? '@' :'#');}System.out.println();
		
		for(int d=1;d<=4;d++) {System.out.print(d == 4 ? '@' :'#');}System.out.println();
				
	
		//ver-3 총정리
		for(int x = 1; x<=4; x++) {
			System.out.println();
			for(int n=1 ; n<=4 ; n++) {System.out.print(n == x ? '@' :'#');}
		}

	}

}


/*

패키지명 : ccom.the703.basic007_ex
클래스명 :  For2Ex002

@###
#@##
##@#
###@

*/