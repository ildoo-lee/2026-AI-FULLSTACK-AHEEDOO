package com.the703.basic015;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Stream003 {
	public static void main(String[] args) {

		Integer[]  ages = {17 , 21, 26 , 45, 18};
		
	     
	     //1단계 stream
	     
		Stream<Integer> sages = Arrays.stream(ages);
				
		//ex1. 짝수만 출력
		sages.filter( t -> t%2==0) //홀수 필터링
             .forEach( System.out::print );
				
		//ex2. 평균값 처리(숫자들을 더해서 연산)
		//(t)->{return}
		// int java.util.function.ToIntFunction.applyAsInt( T value )
		sages = Arrays.stream(ages);
		double aver = sages.mapToInt(age->age)  //IntStream 으로 변환
                           .average()           // 평균계산 max(최대), min(최소), sum(합), count(개수)
						   .orElse(0.0);        // 값없으면 0.0
					
	    System.out.println(aver);
					
        		
		//ex3. 제일 나이가 많은 사람
	    sages = Arrays.stream(ages);
		int max = sages.mapToInt(age->age)  //IntStream 으로 변환
                           .max()           // 평균계산 max(최대), min(최소), sum(합), count(개수)
						   .orElse(-1);        // 값없으면 -1
					
	    System.out.println(max);
		
	    
	    //ex4. 나이 정렬해서 리스트로
	    //Integer[]  ages = {17 , 21, 26 , 45, 18};
	    List<Integer> list = Arrays.stream(ages)
	    		                .sorted()
	    		                .collect( Collectors.toList() );
	    System.out.println("정렬된 리스트 : "+ list);
	    
	    
	    
	    //ex5. 20살 이상만 필터링해서(filter) 리스트로 수집(collect)
	    // (t)->{return}
	    List<Integer> list20 = Arrays.stream(ages)
	    		                 .filter( t -> t>=20)
	    		                 .collect( Collectors.toList() );
        System.out.println("20살이상 리스트 : "+ list20);
        
	   
	    
		
	}
}
