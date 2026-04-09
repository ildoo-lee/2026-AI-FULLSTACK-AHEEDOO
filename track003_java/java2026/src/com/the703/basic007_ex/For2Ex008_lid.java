package com.the703.basic007_ex;

public class For2Ex008_lid {

	public static void main(String[] args) {
		
		//ver1
		System.out.println("1 + 5 = 6");
		System.out.println("2 + 4 = 6");
		System.out.println("3 + 3 = 6");
		System.out.println("4 + 2 = 6");
		System.out.println("5 + 1 = 6");
		
		
		//ver2
		for(;;) {System.out.println("1 + 5 = 6");}
		System.out.println("2 + 4 = 6");
		System.out.println("3 + 3 = 6");
		System.out.println("4 + 2 = 6");
		System.out.println("5 + 1 = 6");
		
		
		//ver3  첫번째 주사위 x, 두번째 주사위 y
		for(int x = 1 ; x <= 5 ; x++) { 
			for(int y = 5 ; y >= 1 ; y=y-1) {System.out.printf("%d+%d=%d\n", x, y, 6);} 
		
		}

	}

}

/*
두개의 주사위를 던졌을때 눈의 합이 6이 되는 모든경우의 수를 출력하는 프로그램을 작성하시오.
이중 for, 이중 while, 이중 do while 세가지 버젼으로 작성하시오.

1+5=6
2+4=6
3+3=6
4+Z=6
5+1=6

*힌트1)
1. 만약 x+y= 6 =〉 (× + y) == 6
2. 첫번째 주사위 : 1 ~ 6 1 2 3 4 5 / 두번째 주사위 : 1 ~ 6 5 4 3 2 1 

* 
* 힌트2)


ver0 두 개의 주사위를 던졌을때 눈의 합이 6


ver1 if(만약 첫번째 주사위가1 이고 두번째 주사위가 1일때 눈이합이 6이라면) { 1+1=6}


ver2
if(1+1==6) { System.out.printIn(1+"+"+1+"="+6); } 
if(1+2==6) { System.out.println(1+"+"+2+"="+6); }
if(1+4==6) { System.out.printIn(1+"+"+4+"="+6); } 
if(1+5==6) { System.out.printIn(1+"+"+ 5+"="+6); } 
if(1+b==6) { System.out.printIn(1+"+"+b+"="+6); } 
if(2+1==6) { System.out.println(2+"+"+1+"="+6); } 
if(2+2==6) { System.out.println(2+"+"+2+"="+6) ; } 
if(2+3==6) { System.out.println(2+"+"+3+"="+6); } 
if(2+4==6) { System.out.println(2+"+"+4+"="+6); } 
if(2+5==6) { System.out.println(2+"+"+5+"="+6); } 
if(2+b==6) { System.out.println(2+"+"+b+"="+6); }

ver3
for(int y=1; y<=6;y++)  {if(1+y==6) { System.out.println(1+"+"+y+"="+6); }}
for(int y=1; y<=6;y++)  {if(2+y==6) { System.out.printin(2+"+"+y+"="+6); }}
for (int y=1; y<=6;y++) {if(3+y==6) { System.out.printIn(3+"+"+y+"="+6); }}
for (int y=1; y<=6;y++) {if(4+y==6) { System.out.printin(4+"+"+y+"="+6); }}
for(int y=1; y<=6;y++)  {if(5+y==6) { System.out.printin(5+"+"+y+"="+6); }}
for (int y=1; y<=6;y++) {if(6+y==6) { System.out.println(6+"+"+y+"="+6); }}

*/

