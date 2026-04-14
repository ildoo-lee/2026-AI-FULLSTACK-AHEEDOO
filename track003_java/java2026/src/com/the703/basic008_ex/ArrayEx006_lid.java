package com.the703.basic008_ex;

public class ArrayEx006_lid {

	public static void main(String[] args) {
		
		// 대문자 26개 + 소문자 26개 52의 방
        char[] ch = new char[52];
        int count1 = 0, count2 = 0;

        // 대문자('A'는 숫자 65)
        for (int i = 0; i < 26; i++) {
            if(ch[i] == 'A' || ch[i] == 'E' || ch[i] == 'I' || ch[i] == 'O' || ch[i] == 'U') {count1++;}
            ch[i] = (char) ('A' + i);
		}
        System.out.println();
        
        // 3. 소문자(26번 방부터 'a')
        for (int i = 0; i < 26; i++) {
            if(ch[i] == 'a' || ch[i] == 'e' || ch[i] == 'i' || ch[i] == 'o' || ch[i] == 'u') {count2++;}
            ch[i + 26] = (char) ('a' + i);
        }
        
        for (int i = 0; i < ch.length; i++) {
            System.out.print(ch[i]);
        }
        System.out.println();
        
    	System.out.println(count1);
		System.out.println(count2);
		
		System.out.println(count1 + count2);
		
		
		
	} // main

} // class


//배열을 이용하여 다음의 프로그램을 작성하시오.
//1. ﻿﻿﻿new를 이용하여 문자열 배열 ch 52개 만드시오
//2. ﻿﻿﻿대문자 A~Z, 소문자 a~z 까지 52개의 데이터를 for를 이용하여 ch배열에 데이터를 대입하시오.
//3. for문을 이용하여 모음의 갯수를 구하시오
//4. >> 모음: a,e, i,o,u , A, E, I, O, U
//5. 모음의 갯수 : 10

