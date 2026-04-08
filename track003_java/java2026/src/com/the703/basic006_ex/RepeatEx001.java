package com.the703.basic006_ex;

public class RepeatEx001 {

	public static void main(String[] args) {
		System.out.println("for");
		for(int a = 1 ; a <= 5 ; a++) {System.out.print(a+"\t");}
		
		System.out.println();
		System.out.println("while");
		int b = 1;
		while(b <= 5) {System.out.print(b+"\t"); b++;}
		
		System.out.println();
		System.out.println("do while");
		int c = 1;
		do{System.out.print(c+"\t"); c++;} while(c <= 5);
		
		System.out.println();
		System.out.println("for");
		for(int d = 5 ; d >= 1 ; d = d-1) {System.out.print(d+"\t");}
		
		System.out.println();
		System.out.println("while");
		int e = 5;
		while(e >= 1) {System.out.print(e+"\t"); e = e - 1;}
		
		System.out.println();
		System.out.println("do while");
		int f = 5;
		do{System.out.print(f + "\t"); f = f - 1;} while(f >= 1);
		
		
		System.out.println();
		System.out.println("for");
		for(int g = 1 ; g <= 3 ; g++) {System.out.print("JAVA" + g + "\t");}
		
		System.out.println();
		System.out.println("while");
		int h = 1;
		while(h <= 3) {System.out.print("JAVA" + h + "\t"); h++;}
		
		System.out.println();
		System.out.println("do while");
		int i = 1;
		do{System.out.print("JAVA" + i + "\t"); i++;} while(i <= 3);
		

		
	
	}

}

/*
연습문제7)  for/while/do while
패키지명 : ccom.the703.basic006
클래스명 :  RepeatEx001
1.  for , while , do while문을 이용해서 다음과 같이 출력하시오 :  1 2 3 4 5
2.  for , while , do while문을 이용해서 다음과 같이 출력하시오 :  5 4 3 2 1
3.  for , while , do while문을 이용해서 다음과 같이 출력하시오 :  JAVA1   JAVA2  JAVA3
*/