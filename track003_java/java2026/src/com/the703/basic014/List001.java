package com.the703.basic014;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;

public class List001 {
	public static void main(String[] args) {
		//Step1. Array
		String [] arr = new String[3]; // 갯수가 정해져 있는 것이 불편 낭비
		arr[0] = "헐크"; // arr[1] = 1; 안된다. 같은 자료형을 넣아야.... 배열은
		System.out.println(Arrays.toString(arr));
		
		//Step2. 동적배열 - List 사용법
		// 부모 <= 자식
		List list = null; // ctrl + shift + o -> import List
		     list = new ArrayList(); // 자식
		     list = new LinkedList(); // 자식
		     list = new Vector(); // 자식
		     
		     
		//Step3.   <>  add, get,  size, remove, contains
		List list2 = new ArrayList();
		list2.add("one"); // Object obj = "one"
		list2.add(1);     // Object obj = 1
		list2.add(3.14);  // Object obj = 3.14
		System.out.println(list2); // 노란색줄... 난장판 되어간다는 뜻. 아무것이나 다 들어가다 보니...
		
		List<String> list3 = new ArrayList<String>();  //<String> 넣으면 1, 3.14 는 해당하지 않아 걸러준다
		list3.add("one"); // Object obj = "one"
		//list3.add(1);     // Object obj = 1
		//list3.add(3.14);  // Object obj = 3.14
		System.out.println(list3);
		
		
		//Step4.    add(추가), get(가져오기),  size(갯수), remove(삭제), contains
		List<String> list4 = new ArrayList<>(); // 앞에 <String> 썼으면 <>만 써도 됨
		list4.add("apple");
		list4.add("banana");
		list4.add("coconut");
		list4.add("mango");
		
		System.out.println(list4);
		System.out.println(list4.get(0));
		System.out.println(list4.size());
		System.out.println(list4.remove(0));
		System.out.println(list4.contains("mango"));
		System.out.println(list4       );
		
	}
}


/*

Collection Framework

1. 저장단위
- 변수 < 배열 < 클래스 < 콜렉션프레임워크 < 파일 < DB

2. 콜렉션프레임워크
- [배열]의 단점을 개선한 클래스, 객체(클래스)만 저장가능
- 동적배열

※ 배열) 같은 타입만 묶어서 저장가능, 배열 생성시 크기를 지정해서 사용하는 친구들, 추후 변경이 불가능.
   String [] arr = new String[3]

3. 핵심 인터페이스
1) List - 기차 (순서가 있고, 중복허용해줌)
         add,  get, size, remove, contains
2) Set - 주머니 (순서가 없고, 중복허용이 안됨) 주머니에 빨간공 넣고 또 빨간공 넣으면 이름을 쓰지않는 이상 순서를 알 수 없음. 중복되면 구분이 안됨
         add,  get(X) 향상된 for 또는 Interator, size, remove, contains
3) Map - 사전 - key, value 쌍
         add(X) put,  get(key), size, remove, contains



*/