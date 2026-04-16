package com.the703.basic009;

public class Method002 {
	
	// 1.    리턴값     메서드명 (파라미터:재료 ★)
	//                 hello("sally")           
	public static void hello(String name) { // String name = "sally"
		System.out.println("Hello~ "+name);
		}
	
	//                 icecream(    1)
	public static void icecream(int num) { // 
		System.out.println("아이스크림 " + num + "개");
		}
	
	public static void info(String str , int score) { // 
		System.out.println(str+" 최종 "+score+"점");
		}
	
	///////////////////////////////////////////
	public static void main(String[] args) {
		hello("sally");
		hello("alpha");
		
		icecream(1);
		icecream(2);
		
		info("sally", 10); // sally 최종 10점
		info("alpha", 9); // alpha 최종 9점

	} // main
	////////////////////////////////////////////
}
