package com.the703.basic006_ex;

public class RepeatEx002 {

	public static void main(String[] args) {
		// 
		
		System.out.print("for\t");
		int hap_1 = 0;
		for(int a = 0 ; a <= 10 ; a++) {
			if(a%3 == 0) {hap_1 = hap_1 + a;}
			}
			System.out.println(hap_1);
			System.out.println();
			
			
		System.out.print("while\t");
		int hap_2 = 0, b = 0;
		while(b <= 10) {
			if(b%3 == 0) {hap_2 = hap_2 + b;} b++;}
		    System.out.println(hap_2);
		    System.out.println();
		    
		System.out.print("do while\t");
		int hap_3 = 0, c = 0;
		do{if(c%3 == 0) {hap_3 = hap_3 + c;} c++;}while(c <= 10);
		    System.out.println(hap_3);
		    System.out.println(); 
		
   }
}

/*
 ver-1 말로 풀어쓰기
 만약 1일 3의 배수의 누적합
 만약 2가 3의 배수의 누적합
 만약 3이 3의 배수의 누적합
 
 ver-2 구조로 바꾸기 - 제어 반복
 if(만약 1이 3의 배수의){누적합}
 if(만약 2이 3의 배수의){누적합}
 if(만약 3이 3의 배수의){누적합}
 
 ver-3 코드로 풀기
 int hap=0;
 if(1%3 == 0){hap+=1;}
 if(2%3 == 0){hap+=2;}
 if(3%3 == 0){hap+=3;} 
 
*/



/*
연습문제2)  for/while/do while
패키지명 : com.the703.basic006_ex;
클래스명 :  RepeatEx002
for , while , do while 3가지 버젼으로 
1~10까지 3의 배수의 합 : 18

힌트)
ver-1)
1이  3의 배수라면  합을 더해 주변수에 누적
2가  3의 배수라면  합을 더해 주변수에 누적
3이  3의 배수라면  합을 더해 주변수에 누적

ver-2)
if( 1이  3의 배수라면 ){ 합을더해주변수에누적 }
if( 2가  3의 배수라면 ){ 합을더해주변수에누적 }
if( 3이  3의 배수라면 ){ 합을더해주변수에누적 }


*/