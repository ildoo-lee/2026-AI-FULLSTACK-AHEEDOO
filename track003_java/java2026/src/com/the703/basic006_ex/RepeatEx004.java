package com.the703.basic006_ex;

public class RepeatEx004 {

	public static void main(String[] args) {
		
		int count_1 = 1, n = 5;
		for(;;) {
			for(char a = 'A'; a <='Z'; a++){
				if(count_1 <= n) {System.out.print(a); count_1 += 1;}
			}
			n += 5;
		}
		
	}

}

/*

문제 : A~Z까지 다음과 같이 출력하시오.
ABCDE 
FGHIJ
KLMNO
PORST 
UVWXY
Z


프로그램 작성 및 실행

* 힌트1)
System.out.print('A'); //1
System.out.print('B'); //2
System.out.print('C'); //3
System.out.print('D'): //4 
System.out.print('E'); //5 번째마다 줄바꿈
System.out.printin();

* 
* 힌트2)
for( char a = 'A'; a <='Z'; a++){
// 5번째 마다 줄바꿈
}

*/