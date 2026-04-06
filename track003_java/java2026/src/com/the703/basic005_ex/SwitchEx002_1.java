package com.the703.basic005_ex;

import java.util.Scanner;

public class SwitchEx002_1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		// 변수
		int a = -1;
		
		// 입력
		System.out.println("숫자한개 입력받아");
		a = sc.nextInt();
		
		
		// 처리 + 출력
		switch(a/3) {
		    
		    // 3/3=1(몫)  4/3=1(몫)   5/3=1(몫)
			// case 3 : case 4 : case 5: System.out.println("봄"); break;
		    case 21: System.out.println("봄"); break;
			
		    // 6/3=2(몫)  7/3=2(몫)   8/3=2(몫)
			case 6 : case 7 : case 8: System.out.println("여름"); break; // case 22 로~ 3개를 하나로 줄일 수있다
			// 9/3=3(몫)  ~
			case 9 : case 10 : case 11: System.out.println("가을"); break;
			
			// 12/3=4(몫)
			case 12 : case 1 : case 2: System.out.println("겨울"); break;
			
			default : System.out.println("1 ~ 12 숫자를 입력해주세요");
		}
		
		 

	}

}

/*


연습문제2)  
패키지명 : com.company.java004_ex
클래스명 :  SwitchEx002
출력내용 :   switch 이용
     숫자한개 입력받아
     3,4,5이면 봄
     6,7,8이면 여름
     9,10,11이면 가을
     12,1,2이면 겨울

*/