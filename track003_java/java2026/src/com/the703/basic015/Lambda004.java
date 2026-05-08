package com.the703.basic015;

import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntBinaryOperator;
import java.util.function.Predicate;
import java.util.function.Supplier;



public class Lambda004 {
	public static void main(String[] args) {

		//(t)->{} accept
		//void java.util.function.Consumer.accept( T t )
		//Consumer<String> consumer=(t)->{System.out.println("hello :) " + t);   };
		
		//ver1 람다식 정리
		//Consumer<String> consumer= t -> System.out.println("hello :) " + t); //ver1 람다식정리  

		//ver2 참조형 가능
		Consumer<String> consumer= System.out::println; //ver2 참조형  Hello 못붙이니 아래 붙이든가
		consumer.accept("lanbda");
		consumer.accept("뚜비");
		
		
		//()->{return} get 주는용도
		//T java.util.function.Supplier.get()
		Supplier<String> supplier = ()->{ return "Hello"; }; //ver1 람다식
		System.out.println(  supplier.get()   );
		
		
		//사용하는 메서드?
		//(t)->{ return true;  } test 판단용도
		//boolean java.util.function.Predicate.test( T t )
		//Predicate<Integer> predicate = (t)->{return t<0;};
		Predicate<Integer> predicate = t -> t<0; //ver1 람다식 정리
		System.out.println(predicate.test(10)); //false
		System.out.println(predicate.test(-10)); // true
		
		
		//(t)->{ return } 처리
		//R java.util.function.Function.apply( T t )
		//ver1 람다식정리
		//Function<String, Integer> function = (t)->{ return Integer.parseInt(t);  };
		//Function<String, Integer> function =  t ->  return Integer.parseInt(t);  
		//ver2 참조형정리
		Function<String, Integer> function = Integer::parseInt;
		System.out.println( function.apply("10")+3); //13
		
		//(left,  right) -> {return}
		//int java.util.function.IntBinaryOperator.applyAsInt( int left, int right )
		//IntBinaryOperator operator = ((left,  right) -> {return left>right ? left:right;}); //ver람다식
		IntBinaryOperator operator = (left,  right) -> left>right ? left:right; //ver참조형
		
		System.out.println(operator.applyAsInt(10,3)); // 누가 큰지 판단 (연산)
		System.out.println(operator.applyAsInt(3,10)); // 누가 큰지 판단
		
		
		
	}
}



/*

자바의 api 함수형인터페이스
1.   Consumer  받는용도 
2.   Supplier  제공용도   
3.   Predicate 판단용도
4.   Function  처리용도
5.   Operator  연산용도


*/