package com.the703.oop007;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class ArraySet003 {
	public static void main(String[] args) {
		ArrayList<String> mySong = new ArrayList<>();
		
		mySong.add("난 알아요");
		mySong.add("시대유감");
		mySong.add("take5");
		
		System.out.println(mySong);
		
		Set<String> mySong1 = new HashSet<>();
		
		mySong1.add("난 알아요");
		mySong1.add("시대유감");
		mySong1.add("시대유감");
		
		System.out.println(mySong1.size());
		
		for(String a : mySong1) {
			System.out.println("내가 좋아하는 노래는 "+a);
		}
		
	}
}
