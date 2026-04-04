package com.the703.v1;

import java.util.Scanner;

public class BankProjectV1 {

	public static void main(String[] args) {
        //변수
		Scanner scanner = new Scanner(System.in);
		int a = -1;
		int id = -1, pass = -1, balance = -1;
		
				
		for(;;){
			System.out.println("🌟💰 WELCOME TO BANK SYSTEM 💰🌟\n"
			                 + "[1] ➕ 계좌 추가\n" // 가입개념, 또 1번하면 다시 ID와 PASS를 새로 생성하는 개념
			                 + "[2] 🔍 계좌 조회\n"
			                 + "[3] 💵 입금하기\n"
			                 + "[4] 💸 출금하기\n"
			                 + "[5] 🗑️ 계좌삭제\n");
			
			System.out.println();
		    
			// 입력	
			System.out.print("👉 번호를 선택하세요:");
			a = scanner.nextInt();		
			
			System.out.println();
			// 처리 + 출력
	             if(a == 1) {
	            	 //System.out.println("추가기능입니다.");
	            	 //입력 id = -1, pass = -1, balance = -1; 위에
	            	 System.out.print("ID: ");
	     			 id = scanner.nextInt();
	     			 
	     			 System.out.print("PASS: ");
	     			 pass = scanner.nextInt();
	     			 
	     			 System.out.print("balace: ");
	     			 balance = scanner.nextInt();
	     			 
	            	 // [1]ID   입력 > 111
	            	 // [2]PASS 입력 > 11
	            	 // [3]금액  입력 > 16000
	        	 }
	        else if(a == 2) {
	        	//System.out.println("조회기능입니다.");
                //변수
	        	int tid = -1, tpass = -1;
	        	//입력 ( 임시공간에 아이디와 비번입력받기)
	        	
	            	 System.out.print("ID: ");
	     			 tid = scanner.nextInt();
	     			 
	     			 System.out.print("PASS: ");
	     			 tpass = scanner.nextInt();
	     		  	
	     	    //               [1]ID   입력 > 111
	        	//               [2]PASS 입력 > 11  
	            
	     	    // 처리 + 출력
	        	// 11번째 줄에 있는 아이디와 임시아이디가 같고, 11번째 줄에 있는 비번과 임시 비번이 같으면 정보출력
	     			 
	     			 
	        	// 아니라면 비밀번호를 확인해주세요.
	        	
	        	
	        	
	             }
	        else if(a == 3) {System.out.println("입금기능입니다.");}
	        else if(a == 4) {System.out.println("출금기능입니다.");}
	        else if(a == 5) {System.out.println("삭제기능입니다.");}
	        else if(a == 9) {System.out.println("종료합니다."); break;}
	        
	             
	        // 삼항연산자
			//          b = avg >= 90   ? "수" 
			//      	:     avg >= 80   ? "우"
			//      	:     avg >= 70   ? "미"
			//     	:     avg >= 60   ? "양" : "가";
			        	
	        //     if(a == 1) {System.out.println("추가기능입니다.");}
	 	    //else if(a == 2) {System.out.println("조회기능입니다.");}
	 	    //else if(a == 3) {System.out.println("입금기능입니다.");}
	 	    //else if(a == 4) {System.out.println("출금기능입니다.");}
	 	    //else if(a == 5) {System.out.println("삭제기능입니다.");}
	 	    //else if(a == 9) {System.out.println("종료합니다."); break;}     
			
			System.out.println();
				
		}
		
		
	
		
		
		

	}

}

/*

Q1. 메뉴판나오게 만들고 사용자가 메뉴 선택시
      1을 입력하면 추가기능입니다. 출력구문까지만
      2를 입력하면 조회기능입니다. 출력구문까지만
      3을 입력하면 입금기능입니다. 출력구문까지만
      4를 입력하면 출금기능입니다. 출력구문까지만
      5를 입력하면 삭제기능입니다. 출력구문까지만
      9를 입력하면 종료합니다.    출력구문까지만

Q2. 무한반복으로 메뉴나오게, 9 나오면 종료
   ■ 힌트
   for(;;) { 
      System.out.println("숫자1을 입력하세요.");
      int a = scanner.nextInt();
      if(a == 1) { break;}
   }
   
*/
