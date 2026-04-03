package com.the703.basic005_ex;

import java.util.Scanner;

public class IfEx007_other {

	public static void main(String[] args) {
		// 변수
				int num1 = 0, num2 = 0, result = 0;
				char opr='\u0000';
				Scanner sc = new Scanner(System.in);
				
				
				// 입력
				System.out.print("정수를 하나 입력해 주세요>");
				num1 = sc.nextInt();
				
				System.out.print("정수를 하나 입력해 주세요>");
				num2 = sc.nextInt();
				
				System.out.print("연산자를 입력해 주세요(+ - * /)>");
				opr = sc.next().charAt(0); // "a(0)b(1)c(2)"
				
				// 처리 + 출력
				result = num1 / (double)num2;
				
				
				     if(opr == '+') {System.out.println(result = num1 + num2);}
				else if(opr == '-') {System.out.println(result = num1 - num2);;}
				else if(opr == '*') {System.out.println(result = num1 * num2);}
				
				if(ch == '/') {
					System.out.println("%d / %d = %.2f , num1, num2, (int)resunt");
				} else {
					System.out.println("%d %c %d = %d\n" , num1, ch, num2, (int)result); // %c char 
					System.out.println("%d %s %d = %d\n" , num1, ch, num2, (int)result); // %c String
				}
					
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