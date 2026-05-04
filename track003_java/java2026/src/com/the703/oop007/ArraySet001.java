package com.the703.oop007;

import java.util.HashSet;
import java.util.Set;

public class ArraySet001 {
	public static void main(String[] args) {
		//1. Set 생성(String 만 담는 주머니)
		Set<String> set = new HashSet();
		
		//2. 데이터 넣기
		set.add("사과");
		set.add("포도");
		set.add("사과"); // 똑같은 사과를 또 넣는다면? List는 상관없었는데....
		
		//3. 결과 확인
		System.out.println("담긴 개수: "+ set.size());
		System.out.println(set); // [포도, 사과] (순서도 보장되지 않음)
		
		
	}
}
