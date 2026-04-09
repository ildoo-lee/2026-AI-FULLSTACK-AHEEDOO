package com.the703.basic006_ex;

public class RepeatEx004 {

	public static void main(String[] args) {
		

//		int count_1 = 0, n = 5;
//		for(;;) {
//			for(char a = 'A'; a <='Z'; a++){
//				if(count_1 > n) {System.out.print(a); count_1 = count_1 + 1;
//				}
//				count_1 = n;
//			}
			
			
//
//		int count_2 = 1;
//		for(int m = 5 ; m <= 30 ; m += 5) {
//			
//			for(char a = 'A'; a <='Z'; a++){
//				if(count_2 <= m) {System.out.print(a);count_2 += 1;}
//			}
//			
//			count_2 += 5;
//			System.out.println();
//			
//
//		}

		//System.out.print('A'); System.out.print('B'); System.out.print('C'); System.out.print('D'); System.out.print('E'); System.out.println();
		//System.out.print('F'); System.out.print('G'); System.out.print('H'); System.out.print('I'); System.out.print('J'); System.out.println();
		
		int cnt=0;
		
		for(char ch='A'; ch<='Z'; ch++) {  
			System.out.print(ch);  cnt++;
				//if(cnt%5==0) {System.out.println();}
				// 만약e 줄바꿈
				// 만약J
				// e : System.out.println();
				// j : System.out.println();	
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