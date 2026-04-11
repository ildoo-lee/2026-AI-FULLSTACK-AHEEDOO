package com.the703.bank;

import java.util.Scanner;

public class BankProjectV1_lid_2 {

	public static void main(String[] args) {
        // 불필요한 ID PW 재확인 등 삭제 ★
		
		// 변수
		Scanner scanner = new Scanner(System.in);
		int menu = -1, id = -1, pass = -1, balance = -1, tid = -1, tpass = -1;
		
			
//			 - 제어문 : if , switch
//			 - 반복문 : for(시작;  종료; 변화;), while(조건), do while(한번은 무조건 실행 맨끝에 조건)
			 
			  while( menu != 9 ) {System.out.println(
			       "🌟💰 WELCOME TO BANK SYSTEM 💰🌟\n" 
			             + "[1] ➕ 계좌 추가\n"
			             + "[2] 🔍 계좌 조회\n"
			             + "[3] 💵 입금하기\n"
			             + "[4] 💸 출금하기\n"
			             + "[5] 🗑️ 계좌 삭제\n"
			             + "[9] 종료\n"
			             + "\n"
			             + "👉 번호를 선택하세요:");
			  
			             menu = scanner.nextInt();
			  
			             if(menu == 9) {
			            	 System.out.print("뱅크서비스를 종료합니다");
			             }
			             
			             else if(menu == 1) {
			            	 System.out.print("ID: ");
							 id = scanner.nextInt();
								
							 System.out.print("PASS: ");
							 pass = scanner.nextInt();
				
						 	 System.out.print("balace: ");
							 balance = scanner.nextInt();
			             }
			             
			             switch(menu){
		                    case 1 : System.out.print("ID: ");
									 id = scanner.nextInt();
										
									 System.out.print("PASS: ");
									 pass = scanner.nextInt();
						
								 	 System.out.print("balace: ");
									 balance = scanner.nextInt();
					                 }continue;
					                 
							 
					             
			             
//			             
//		             if( menu==9 ) {System.out.println("종료합니다");}
//		             
//		  
//		        else if( menu==1 ) {
//				    System.out.print("ID: ");
//					id = scanner.nextInt();
//	
//					System.out.print("PASS: ");
//					pass = scanner.nextInt();
//	
//			 		System.out.print("balace: ");
//					balance = scanner.nextInt();
//				}
		  
//			else {
//					System.out.println("ID와 PW를 입력하세요>");
//					
//					System.out.print("ID: ");
//					tid = scanner.nextInt();
//					
//					System.out.print("PASS: ");
//					tpass = scanner.nextInt();
					
//        	        if (tid == id && tpass == pass) {
//				        System.out.println("조회 성공!\n" + "잔액: " + balance);
//	  				} 
//        	        else {
//        	        	System.out.println("아이디 또는 비일번호를 다시 입력해주세요");
//        	        }
//		            
//	  					
//	  				switch(menu) {
//		                  case 2 :  
//					  				}
	  		//} //큰 else

			  
			  
			  
			  
	  } // while	  
			  
			  
	}
}
		                	  
		                 
		            
		                          
		            
			             
			             
//			          무한반복 ( 종료 9 ){
//			          0. 메뉴판 입력 
//			          🌟💰 WELCOME TO BANK SYSTEM 💰🌟  [1] ➕ 계좌 추가 [2] 🔍 계좌 조회 [3] 💵 입금하기 [4] 💸 출금하기 [5] 🗑️ 계좌 삭제
//			          👉 번호를 선택하세요:
//			          
//			          
//			               if( menu==9 ) {[9] 종료문구}
//			          else if( menu==1 ) { [1] ➕ 계좌 추가 }
//			          2. [2~5]
//			             2-1. 사용자가 맞는지 확인
//			             임시 아이디 입력받기 >
//			             임시 비밀번호 입력받기 >
//			             저장되어 있는 아이디와 임시 아이디가 같고 저장되어 있는 비번과 임시비번이 같으면 아래 내용 처리( 컨티뉴 )
//			             
//			          2-2 조회면 조회기능, 입력이면 사용자에게 입력받아서 입금, 출금이면 출금금액 받아서 출금, 
//			              계좌 삭제라면 y,n를 입력받아서 계좌삭제
//			               
//			              switch (menu){ 
//			              case 2 : 조회처리
//			              case 3 : 입금받기 / 잔액에 입금받은 돈 추가 break;
//			              case 4 : 출금하기 / 잔액에 출금된 돈 빼기 ( 마이너스 통장x , 잔액없으면 출금 안되게 ) break;
//			              case 5 : 계좌삭제 여부 Y,y 를 입력받으면 계좌삭제 / break;
//			              
//			              
//			              
//			           3.[9] 종료
//			              
//			      





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

🌟💰 WELCOME TO BANK SYSTEM 💰🌟

[1] ➕ 계좌 추가
[2] 🔍 계좌 조회
[3] 💵 입금하기
[4] 💸 출금하기
[5] 🗑️ 계좌 삭제  

👉 번호를 선택하세요:



*/