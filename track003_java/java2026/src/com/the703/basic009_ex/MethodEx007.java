package com.the703.basic009_ex;

public class MethodEx007 {
	
	public static String add(String a, String b) {
		return "맛있는 " + a + b;
		
	}

	public static void main (String[] args) {
		
		String a="CHOCO", b="MILK";
		
		String res = add(a,b);
		
		System.out.println(res);
		
	}// main

}//class

/*

두개의 문자열을 더해 다음과 같이 출력하는 메서드를 작성하시오.

public static void main (String[] args) {
String a="CHOCO", b="MILK";
String res=add (a,b);
System.out.println(res);
}

맛있는 CHOCOMILK

*/