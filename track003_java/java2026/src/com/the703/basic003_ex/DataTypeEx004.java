package com.the703.basic003_ex;

import java.util.Scanner;

public class DataTypeEx004 {

	public static void main(String[] args) {
    
    // 변수
	float fl = 3.14f;
	double p;
	Scanner sc = new Scanner(System.in);
			
	// 입력
	System.out.print("파이값을 입력하시요 >");
	p = sc.nextDouble();
	
	// 처리
	// 출력
	System.out.println("파이값은 " + p + "입니다.");
	// System.out.printf("파이값은 %f입니다.\n", p);
	System.out.printf("파이값은 %.0f입니다.\n", p);
	System.out.printf("파이값은 %.1f입니다.\n", p);
	System.out.printf("파이값은 %.2f입니다.\n", p);
	System.out.printf("파이값은 %.6f입니다.\n", p);
	
	System.out.println(10/3); // 정수/정수    3
	System.out.println(10/3f); // 정수/실수    3.3333333
	System.out.println(10f/3); //실수/정수    3.3333333
	
	
	
	
	}

}

/*
Scanner이용해서 파이값을 입력받고 출력하시오. 
파이값을 입력하시오 > _입력받기    3.141592    ( 자료형선택 )
파이값은 **입니다.

*/