package com.the703.basic005;

import java.util.Scanner;

public class ForInfinit {

	public static void main(String[] args) {
		// 제어문
		// 조건문: ~라면  if / switch
		// 반복문: 반복  for  /  while  /do while
		// 제어조건 : break / continue
		
		//1. 영역
		//for(;;) // ← 무한박복 빠져나올 수 있는 무언가가 있어야한다.
		// { System.out.println("안녕"); } // { }  ← 영역
		
		Scanner scanner = new Scanner(System.in);
		
		//2. 빠저나오기
		int a = -1;
		
		for(;;){
			System.out.println("Hello");
			System.out.println("빠져나오실래요? 0이면 종료");
			a = scanner.nextInt();
			if(a==0) break; // for 쓰면 빠저나올 조건이 꼭 필요하다
		}
	
		
		//int a = -1  // a [ -1 ]
		//for(;   a != 0   ;) // a가 0이 아니면 반복해
		//{// 여기서부터
			//System.out.println("Hello");
			//System.out.println("빠져나오실래요? 0이면 종료");
			//a = scanner.nextInt();
			
		
		
	    //} // 여기까지 반복해
		
		
		
		
	}
}
