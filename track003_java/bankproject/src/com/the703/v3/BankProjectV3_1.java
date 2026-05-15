package com.the703.v3;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Scanner;

//1. Dto 데이터전송목적 (기본생성자, 필드생성자, toString, getters/setters, hashCode/equals)
class BankDto1{
	private String id;
	private String pass;
	private double balance;
	
	public BankDto1() { super();  }
	public BankDto1(String id, String pass, double balance) { super(); this.id = id; this.pass = pass; this.balance = balance; }
	@Override public String toString() { return "BankDto1 [id=" + id + ", pass=" + pass + ", balance=" + balance + "]"; }
	
	
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	public String getPass() { return pass; }
	public void setPass(String pass) { this.pass = pass; }
	public double getBalance() { return balance; }
	public void setBalance(double balance) { this.balance = balance; }
	
	@Override public int hashCode() { return Objects.hash(balance, id, pass); }
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BankDto1 other = (BankDto1) obj;
		return Double.doubleToLongBits(balance) == Double.doubleToLongBits(other.balance)
				&& Objects.equals(id, other.id) && Objects.equals(pass, other.pass);
	}
	
} //Dto 클래스



//2. 기능클래스
class Bank1{
	List<BankDto1>  users;   // 객체를 생성하는게 아니라 정보만 받을 목적
	public Bank1() { super(); }
	public Bank1(List<BankDto1> users) { super(); this.users = users; }
	
	// 메뉴 - 안에 내용작성
	public void menu() {
		int menu=-1; 
		Scanner scanner = new Scanner(System.in);
		
		
		
		//System.out.println( id + "\t" + pass + "\t" + balance);  // 계좌의 1명분  확인용
        
		
		while(menu != 9) {
			System.out.print("\n\n🌟💰 WELCOME TO BANK SYSTEM 💰🌟\r\n"
					+ "[1] ➕ 계좌 추가 [2] 🔍 계좌 조회 [3] 💵 입금하기 [4] 💸 출금하기 [5] 🗑️ 계좌 삭제  [9]종료\r\n"
					+ "👉 번호를 선택하세요:");
			menu = scanner.nextInt();
			
			if( menu == 1) { add();}
			else {
				BankDto1 find = login();// 로그인 확인
				if(find == null) { System.out.println("정보를 확인해주세요"); continue; }
				// 각각의 메뉴에 맞는 기능호출
				switch(menu) {
					case 2 : show(find); break;
					case 3 : deposite(find); break;
					case 4 : withdraw(find); break;
					case 5 : delete(find); break;
					case 9 : exit(); break;
				}
			}
		}
	}   
	
	
	
	
	// 유저추가  (add)
	
	public void add() {
		//변수
		Scanner scanner = new Scanner(System.in);
		//입력 - 사용자에게 정보입력받기
		System.out.println("아이디 입력> "); String tempid = scanner.next(); // 아이디 중복검사
		System.out.println("비밀번호 입력> "); String temppass = scanner.next();
		System.out.println("잔액 입력> "); double tempbalance = scanner.nextDouble();
		
		//처리 list -> add, get, size, remove, contains
		users.add( new BankDto1(tempid , temppass , tempbalance ) );
		System.out.println(users);
		
		//출력
		
		
	}
	//처리 list -> add, get, size, remove, contains
	// 유저로그인 - 유저정보     BankDto1 login(){}	
	BankDto1 login(){
		//변수
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("아이디 입력> "); String tempid = scanner.next(); // 아이디 중복검사
		System.out.println("비밀번호 입력> "); String temppass = scanner.next();
		//처리
		for(BankDto1 u : users) {
			if( u.getId().equals(tempid) && u.getPass().equals(temppass)) {	return u; }
		}
		return null;
		//출력
	}
	
	
	void show( BankDto1  user  ){
	      System.out.printf("ID : %d\nPASS: %d\nBALANCE: %d\n" ,user.getId(),user.getPass(), user.getBalance()); 
	   } 
	
	// 입금   (get)    - void deposite(BankDto1 user){};
	void deposite(BankDto1 user){
		Scanner scanner = new Scanner(System.in);
		System.out.println("입금할 금액  입력> " ); double tempbalance = scanner.nextDouble();
		if(user.getBalance() < tempbalance){System.out.println("잔액이 모자랍니다."); return;	}
		user.setBalance(user.getBalance() + tempbalance);
		System.out.println("입금완료");
	};
	
	
	
	// 출금   (get)    - void withdraw(BankDto1){}
	void withdraw( BankDto1 user){
		Scanner scanner = new Scanner(System.in);
		System.out.println("출금할 금액  입력> " ); double tempbalance = scanner.nextDouble();
		if(user.getBalance() < tempbalance){System.out.println("잔액이 모자랍니다."); return;	}
		user.setBalance(user.getBalance() - tempbalance);
		System.out.println("출금완료");
	};
	
	// 유저삭제(remove) - void delete(BankDto1){}
	void delete(BankDto1 user){};
	
	
	// 종료            - void exit(    ){}
	void exit(    ){};
	
	
	
}// 기능 클래스



public class BankProjectV3_1 {
	public static void main(String[] args) {
		List<BankDto1>  users = new ArrayList<>();
		Bank1      controller = new Bank1(users);
		controller.menu();
		
		
		
		
		
		//테스트용
		//controller.add();
		//System.out.println(controller.users);
	}
}
