package com.the703.basic009;

public class StringEquals {

	public static void main(String[] args) {
		String id = "abc";   //기본값 X
		String id2 = "abc";  // 참조값 O
		String id3 = new String("abc"); // id, id2, id3 참조값(주소값)
		
		System.out.println("1) " + (id==id2)); //true
		System.out.println("2) " + (id==id3)); //false
		
		System.out.println(System.identityHashCode(id)); //1464642111
		System.out.println(System.identityHashCode(id2)); //1464642111
		System.out.println(System.identityHashCode(id3)); //105704967
		
		System.out.println("2) " + (id.equals(id3))); //true
		//문자열비교   equals 이용
	}//main
}// class

/*          heap       |        stack
                            ← id[1464642111]          id="abc"                
1464642111["abc"]           ← id2[1464642111]         id="abc"  
105704967 ["abc"]           ← id2[105704967]   new 메모리 빌리고
 */