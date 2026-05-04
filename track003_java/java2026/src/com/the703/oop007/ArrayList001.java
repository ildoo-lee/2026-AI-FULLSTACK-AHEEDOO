package com.the703.oop007;

import java.util.ArrayList; // 리스트를 쓰려면 필수

public class ArrayList001 {
	public static void main(String[] args) {

		//2. ArrayList 생성(Animal3 타입만 담는 바구니)
		ArrayList<String> list = new ArrayList<>();
		
		//3. 데이터 넣기 (.add)
		list.add("강아지");
		list.add("고양이");
		list.add("에어컨"); // 배열과 달리 칸 수를 고민할 필요가 없어요.
		
		//4. 데이터 꺼내기 (.get)
		System.out.println(list.get(0)); // 강아지
		System.out.println(list.get(1)); // 고양이
		
		
		//5. 데이터 개수확인 (.size)
		System.out.println("담긴 개수: "+ list.size());
		
		// list로 하면 편하지만, 
		// 속도나 메모리가 중요할 때, 
		// 또는 개수가 확실히 정해져 있을 때는 일반 배열을 사용
		
	}
}