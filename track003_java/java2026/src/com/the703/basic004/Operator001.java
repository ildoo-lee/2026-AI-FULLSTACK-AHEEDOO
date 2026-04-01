package com.the703.basic004;

import java.util.Scanner;

public class Operator001 {

	public static void main(String[] args) {
		//0. 먼저() 값을 구하고 비교해서 조건을 건 다음 대입한다.
		//■1. 값을 구한다.( + , - , * , / , % )
		int a = 10,b = 3;
		System.out.println(a+b); // 13
		System.out.println(a-b); // 7
		System.out.println(a*b); // 30
		System.out.println(a/b); // 3
		System.out.println(a%b); // 1
		
		System.out.println();	
		//Q1. 나머지연산자 - 짝수니? 홀수니 ? (경우의 수 2개)    n%2 -> 나머지 ; 0 1
		System.out.println("Q1. " + 0%2 + "\t" + 1%2 + "\t" + 2%2 + "\t" + 3%2);
		
		
		System.out.println();
		//Q2. 3의 배수? a가 3의 배수니? / b가 3의 배수니? 3의 나머지 0
		
		System.out.println("Q1. " + a%3 + "\t" + b%3); // 나머지 : 0  1  2
		
		
		int num;
		Scanner sc = new Scanner(System.in);
		System.out.print("숫자를 입력하세요 >");
		
		num = sc.nextInt();
		
		if (num%3 == 0) {System.out.println("3의 배수입니다!");} 
		else {System.out.println("3의 배수가 아닙니다.");}
		
		//Q3. 
		// a + b;
		int result = a + b;
		
		System.out.println();
		//■2. 비교 (> , < , >= , <= , == 같다, !=다르다)
		System.out.println( 10 > 3 );
		System.out.println( 10 == 3 );
		
		
		System.out.println();
		//Q1. a가 짝수라면 true
		System.out.println(a%2 == 0);
		//Q2. b가 3의 배수라면 true
		System.out.println(b%3 != 0); // 3의 배수가 아니라면...
		
		
		System.out.println();
		//■3. 조건  &&(모든 조건을 만족하면 true)  ||(또는:여러조건 중에서 하나라도 만족하면 true) 
		System.out.println( true  &   true);  // true  &   true  →  true   처음 true여서 true지만 다음것도 확인하고 true
		System.out.println( true  &&  true);  // true  &&  true  →  true   
		System.out.println( false &   true);  // false &   true  →  false  처음 false여서 false지만 다음것도 확인하고 false
		System.out.println( false &&  true);  // false           →  false  처음 false여서 false여서 더이상 보이지않고 false Dead Code
		
		
		System.out.println();
		System.out.println(true  |   true);
		System.out.println(true  ||  true); // Dead Code
		System.out.println(false |   true);  // false
		System.out.println(false ||  true);  
		
		
		
		System.out.println();
		 //Q1. a가 2의 배수이면서 5의 배수라면 true / false
		System.out.println( a%2 == 0   &&   a%5 == 0  );
		
		//Q2. a가 2의 배수이거나 3의 배수라면 true / false
		System.out.println( a%2 == 0   ||   a%3 == 0  ); // () 값(+-*/%) 비교(<) 조건(&& ||) 대입
		
		System.out.println();
		//■4. 삼향연산자  조건 ?  참 : 거짓 |
		String answer =  a==10?   "10이다" : "10이 아니다";
		System.out.println(  answer  );
		
		System.out.println();
		//Q1. a가 양수라면 1 아니면 -1 삼항연산자
		int q1 =  a>0?  1 : -1;
        System.out.println( q1 );
		
        
        System.out.println();
        //■5. 대입연산
        a=10; b=3;
        a=a+b;   System.out.println(a);

        a=10; b=3;
        a+=b;   System.out.println(a);
        
        a=10; b=3;
        a-=b;   System.out.println(a);  // 7
        
        System.out.println();
        //■5. 단항 ( ++ 1개 증가, --1개 감소 )
        int a1=1, b1=1, c1=1, d1=1;
        System.out.println(++a1); // 2 a1 1에서 1증가시키고 출력
        System.out.println(  a1); // 2 출력된 값 받아서 그대로 출력
       
        System.out.println();
        System.out.println(b1++); // 1 1출력하고 그 다음 1증가 
        System.out.println(b1  ); // 2 1증가하여 2가 된 값을 받아서 출력
        
        System.out.println();
        System.out.println(--c1); // 0
        System.out.println(  c1); // 0
        
        System.out.println();
        System.out.println(d1--); // 1
        System.out.println(d1  ); // 0
        
        
	}

}
