package com.the703.basic006_ex;

public class RepeatEx003 {

	public static void main(String[] args) {
		
		//
		
		int count_1 = 0;
		
		   for(int a = 1;a <= 30 ; a++) {
			   if(a%3 == 0 && a%2 == 0) {System.out.println("3의 배수이면서 2의 배수인 숫자 : " + a); count_1 = count_1 + 1;}
		   }
		System.out.println();
		System.out.println("갯수 : " + count_1);
		System.out.println();
		
		int b = 1, count_2 = 0;
		
		   while(b <= 30) {
			   if(b%3 == 0 && b%2 == 0) {System.out.println("3의 배수이면서 2의 배수인 숫자 : " + b); count_2 = count_2 + 1;}; b++;
		   }
		System.out.println();
		System.out.println("갯수 : " + count_2);
		System.out.println();
		
		int c = 1, count_3 = 0;
		
		   do{
			  if(c%3 == 0 && c%2 == 0) {System.out.println("3의 배수이면서 2의 배수인 숫자 : " + c); 
			                             count_3 = count_3 + 1; c++;};}while(c <= 30);
		                                
		System.out.println();
		System.out.println("갯수 : " + count_3);
		System.out.println();
		
		

	}

}


/*

1~30의 범위에서 
3의 배수이면서 
2의 배수인 숫자(각각 다 나오게 하고)와 갯수(몇개인지도)를 구하는 프로그램을 작성하시오.



프로그램 작성 및 실행
terminated> For/_ Lava Application C:#UsersmsallyAnm.pzwpoolmpluq

1. 3의 배수이면서 2의 배수인 숫자 : 6
2. 3의 배수이면서 2의 배수인 숫자 : 12
3. 3의 배수이면서 2의 배수인 숫자 : 18
4. 3의 배수이면서 2의 배수인 숫자 : 24
5. 3의 배수이면서 2의 배수인 숫자 : 30
갯수 : 5

* 힌트)
ver-01~30중에서 3의 배수이면서 2의 배수인 숫자와 갯수
ver-1
힌트) 3의 배수이면서 Z의 배수인 숫자
3의배수 :a%3== 03(6) 9
2의배수:a%2==024 (6) 810
Ff(a%3==0 && a%2==0){ a갯수카운트 }
1이 3의 배수이면서 2의 배수라면 숫자출력, 갯수카운트
2가 3의 배수이면서 2의 배수라면 숫자출력, 갯수카운트
ver-2
if(1이 3의 배수이면서 2의 배수라면){ 숫자출력, 갯수카운트} if(2가 3의 배수이면서 2의 배수라면){ 숫자출력, 갯수카운트}
ver-3
int cnt = 0;
if(1%3==0 && 1%2==0){ System.out.printin(++cnt +".3의 배수이면서 2의 배수인 숫지 if(2%3==0&& 2%2==0){ System.out.printin(++cnt +".3의 배수이면서 2의 배수인 숫자.
「=
J
L);
Tf(3%3==0 && 3%2==0){ System.out.printin(++cnt+".3의 배수이면서 2의 배수인 숫자 :"+ 3);}


*/