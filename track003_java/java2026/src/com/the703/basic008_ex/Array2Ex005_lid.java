package com.the703.basic008_ex;

public class Array2Ex005_lid {
    public static void main(String[] args) {
        int n = 5;
        int[][] arr = new int[n][n];
		      
	    for (int i = 0; i < arr.length; i++) {
	       for (int j = 0; j < arr[i].length; j++) {
	          arr[i][j] = (i*5)+(j+1);
	        }
	     }
		      
	     //출력
	     for (int i = 0; i < arr.length; i++) {
	        for (int j = 0; j < arr[i].length; j++) {
	           System.out.print(arr[i][j]+(j == arr[i].length-1 ? "\n" : " "));
	        }
	     }
		      
	     // 90도 회전
	     for (int i = 0; i < arr.length; i++) {
	        for (int j = 0; j < arr[i].length; j++) {
	           arr[j][arr.length-1-i] = (i*5)+(j+1);
	        }
	     }
		      
	     System.out.println();System.out.println();
	     //출력
	     System.out.println("\n90도 회전>>");
	     for (int i = 0; i < arr.length; i++) {
	        for (int j = 0; j < arr[i].length; j++) {
	           System.out.print(arr[i][j]+(j == arr[i].length-1? "\n":" "));
	        }
	     }
		      
		      
	     // 180도 회전
	     for (int i = 0; i < arr.length; i++) {
	        for (int j = 0; j < arr[i].length; j++) {
	           arr[arr.length-1-i][arr[i].length-1-j] = (i*5)+(j+1);
	        }
	     }
	      
	     //출력
	     System.out.println("\n180도 회전>>");
	     for (int i = 0; i < arr.length; i++) {
	        for (int j = 0; j < arr[i].length; j++) {
	           System.out.print(arr[i][j]+(j == arr[i].length-1? "\n":" "));
	        }
	     }
		      
	     for (int i = 0; i < arr.length; i++) {
	        for (int j = 0; j < arr[i].length; j++) {
	           arr[arr[i].length-1-j][i] = (i*5)+(j+1);
	        }
	     }
		      
	     //출력
	     System.out.println("\n반시계 방향 90도 회전>>");
	     for (int i = 0; i < arr.length; i++) {
	        for (int j = 0; j < arr[i].length; j++) {
	           System.out.print(arr[i][j]+(j == arr[i].length-1? "\n":" "));
	        }
	     }
	     
	     
	     
	  }// main
}// class