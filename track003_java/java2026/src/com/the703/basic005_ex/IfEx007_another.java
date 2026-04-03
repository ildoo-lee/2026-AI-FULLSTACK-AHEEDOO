package com.the703.basic005_ex;

import java.util.Scanner;

public class IfEx007_other {

	public static void main(String[] args) {
		// 변수
				int num1 = 0, num2 = 0, String result = "";
				char opr='\u0000';
				Scanner sc = new Scanner(System.in);
				
				
				// 입력
				System.out.print("정수를 하나 입력해 주세요>");
				num1 = sc.nextInt();
				
				System.out.print("정수를 하나 입력해 주세요>");
				num2 = sc.nextInt();
				
				System.out.print("연산자를 입력해 주세요(+ - * /)>");
				opr = sc.next().charAt(0); // "a(0)b(1)c(2)"
				
				// 처리
				result = "" + num1 + opr + num2 + "="; // 출력파트
				
				// 처리
				     if(opr == '+') {result += (num1 + num2);}
				else if(opr == '-') {result -= (num1 - num2);}
				else if(opr == '*') {result += (num1 * num2);}
				else if(opr == '/') {result += String.format("%.2f", num1/(double)num2);}
				// 출력
				     
				// System.out.printf("%d / %d = %.2f , num1, num2, (int)resunt");
         		// System.out.printf("%d %c %d = %d\n" , num1, opr, num2, (int)result); // %c char 
		        // System.out.printf("%d %c %d = " + (opr == '/'? "%.2f" : "%.0f"), num1, opr, num2, (int)result);
		
		        System.out.println( result);
				// 5+10=15
				// 나누기는 소숫점 나오게     
			}

		}

		/*
		연습문제7)  ※ 숙제
		패키지명 : com.company.java004_ex
		클래스명 :  IfEx007
		출력내용 :  계산기

		1. 정수를 하나 입력해주세요 > 10
		2. 정수를 하나 입력해주세요 > 3
		3. 연산자를 입력해주세요(+,-,*,/) > +
		10+3=13

		*/