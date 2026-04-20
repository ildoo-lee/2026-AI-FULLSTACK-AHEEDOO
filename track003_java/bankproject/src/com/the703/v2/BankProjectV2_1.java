package com.the703.v2;

import java.util.Scanner;

import java.util.Arrays;

public class BankProjectV2_1 {

	public static void main(String[] args) {
		  
	      //변수                                   0   1    2
		  ///////////////////////////////////////////////////////
	      String[] id = new String[3];        //  one two three
	      String[] pass = new String[3];      // 1111 2222 3333
	      double[] balance = new double[3];   // 1100 2200 3300   
	      int menu=-1;  
	      Scanner scanner = new Scanner(System.in);
	      //////////////////////////////////////////////////////////
	      
	      
	      
	      while( menu != 9 ) {
	    	  System.out.println(Arrays.toString(id));
	    	  System.out.println(Arrays.toString(balance));
	    	  
	    	  System.out.println(
    			"🌟💰 WELCOME TO BANK SYSTEM 💰🌟\n" 
		             + "[1] ➕ 계좌 추가\n"
		             + "[2] 🔍 계좌 조회\n"
		             + "[3] 💵 입금하기\n"
		             + "[4] 💸 출금하기\n"
		             + "[5] 🗑️ 계좌 삭제\n"
		             + "[9] ※ 서비스 종료\n"
		             + "\n"
		             + "👉 번호를 선택하세요:");
		  
		             menu = scanner.nextInt();
		             
		             
		             if(menu == 1) {
		            	 int j = -1;
         	    
	            	     for(int i = 0; i < id.length; i++) {
	            	         if(id[i] == null){ j = i;break;}
	            	     }//for
	            	     if(j == -1){System.out.println("가입불가");continue;}
		            	 		            	 
		            	 
		            	 System.out.println("가입하실 ID와 PW를 입력하세요");
		            	 System.out.print("ID: ");  id[j] = scanner.next();
		            	 System.out.print("PW: ");  pass[j] = scanner.next();
		            	 System.out.print("금액: "); balance[j] = scanner.nextDouble();
		            	 System.out.println("가입되셨습니다. " + balance[j] + "원이 입급되었습니다!");
		            	 
		             } // m1
		             
		             else if(menu >= 2 && menu <= 5) {
		            	 double plus = -1;
		            	 String tid =""; 
		            	 String tpass = "";
		            	 
		            	 System.out.println("조회하실 ID와 PW를 입력하세요");
		            	 System.out.print("ID: "); tid = scanner.next();
		            	 System.out.print("PW: "); tpass = scanner.next();
		            	 
		            	 
						 for(int n =0;n<=id.length;n++) {
							 if(!(id[0] == tid && pass[0] == tpass)) {System.out.println("없는 정보이니, 다시 입력해주세요");continue;}
			            	 
			            	 switch(menu) {
				            	 case 2 : System.out.println("잔액:"+ balance[0] + "원입니다");break;
				            	 case 3 : System.out.print("입금할 금액을 입력하세요"); plus = scanner.nextDouble();
							              balance[n] = balance[n] + plus;  
							              System.out.println("잔액:"+ balance[0] + "원입니다");break;
				            	 case 4 : System.out.print("출금할 금액을 입력하세요"); plus = scanner.nextDouble();
					                      balance[n] = balance[n] - plus; 
					                      System.out.println("잔액:"+ balance[n] + "원입니다");break;
				            	 case 5 : id[n] = ""; pass[n] = ""; balance[n] = -1;
				            	          System.out.println("계좌 삭제되었습니다");break;
				            						                      
			            	 } // switch
						 }//for
		            	 		            	 
		             } // else if m2~5
			         
		             //else {System.out.println("올바른 숫자번호를 입력해주세요");}
	      }//while
			             
	      
	} // main
	
} // class
			             
			             
			             
			             
	      