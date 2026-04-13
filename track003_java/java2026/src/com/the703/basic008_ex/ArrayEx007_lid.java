package com.the703.basic008_ex;

public class ArrayEx007_lid {

	public static void main(String[] args) {
        char[] ch = {'B', 'a', 'n', 'a', 'n', 'a'};
		char so = '\u0000', dae = '\u0000';
		
		for(int a = 0 ; a < ch.length ; a++) {
			     if(ch[a] >= 'A' && ch[a] <= 'Z') {
			    	 dae = (char) (ch[a] + 32);
			    	 System.out.printf("%s\t", dae);
					 
			    	 }
			else if(ch[a] >= 'a' && ch[a] <= 'z') {
				     so = (char) (ch[a] - 32);
				     System.out.printf("%s\t", so);
					 
				     }
		} // for
		

	} // main

} // class


//배열을 이용하여 다음의 프로그램을 작성하시오.
//대소문자 서로 바꿔서 출력하시오.
//char ch[] ={'B', 'a','n','a', 'n','a'}
//
//
//[b, A, N, A, N, A] // 반대로 출력