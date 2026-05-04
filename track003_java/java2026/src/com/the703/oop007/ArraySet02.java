package com.the703.oop007;

import java.util.HashSet;
import java.util.Set;

public class ArraySet02 {
	public static void main(String[] args) {
		Set<Integer> numbers = new HashSet<>();
		
		numbers.add(10);
		numbers.add(20);
		numbers.add(10);
		
		System.out.println(numbers.size());
		
		for(Integer a : numbers) {
			System.out.print(a+"\t");
		}
		
	}
}
