package com.the703.v3;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Scanner;

class BankDto{
	private String id;
	private String pass;
	private double balance;
	
	public BankDto() { super();  }
	public BankDto(String id, String pass, double balance) { super(); this.id = id; this.pass = pass; this.balance = balance; }
	@Override public String toString() { return "BankDto [id=" + id + ", pass=" + pass + ", balance=" + balance + "]"; }
	
	@Override public int hashCode() { return Objects.hash(balance, id, pass); }
	@Override public boolean equals(Object obj) { if (this == obj) return true; if (obj == null) return false; if (getClass() != obj.getClass()) return false; BankDto other = (BankDto) obj; return Double.doubleToLongBits(balance) == Double.doubleToLongBits(other.balance) && Objects.equals(id, other.id) && Objects.equals(pass, other.pass); }
	
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	public String getPass() { return pass; }
	public void setPass(String pass) { this.pass = pass; }
	public double getBalance() { return balance; }
	public void setBalance(double balance) { this.balance = balance; }
	
}

class Bank{
List<BankDto>  users;   // 객체를 생성하는게 아니라 정보만 받을 목적
	
	Scanner scanner = new Scanner(System.in);
	
	public Bank() { super(); }
	public Bank(List<BankDto> users) { super(); this.users = users; }
	
	// 메뉴 - 안에 내용작성
	public void menu() {
		
		int menu=-1; 
		//Scanner scanner = new Scanner(System.in);
		
		while(menu != 9) {
			System.out.print("\n\n🌟💰 WELCOME TO BANK SYSTEM 💰🌟\n\n"
					+ "[1] ➕ 계좌 추가\n"
					+ "[2] 🔍 계좌 조회\n" 
					+ "[3] 💵 입금하기\n" 
					+ "[4] 💸 출금하기\n"
					+ "[5] 🗑️ 계좌 삭제\n"  
					+ "[9]    종료\n\n"
					+ "👉 번호를 선택하세요:");
			menu = scanner.nextInt();
			scanner.nextLine();
			
			if( menu == 1) { add();}
			else if( menu == 9 ) { 
			    exit();
			}
			else {
				BankDto find = login();// 로그인 확인
				if(find == null) { System.out.println("정보를 확인해주세요"); continue; }
				// 각각의 메뉴에 맞는 기능호출
				switch(menu) {
					case 2 : show(find); break;
					case 3 : deposite(find); break;
					case 4 : withdraw(find); break;
					case 5 : delete(find); break;
					//case 9 : exit(); break;
				}
			}
		}//while
	}//menu  
	
	
	
	
	// 유저추가  (add)
	
	public void add() {
		//변수
		//Scanner scanner = new Scanner(System.in);
		//입력 - 사용자에게 정보입력받기
		System.out.println("아이디 입력> "); String tempid = scanner.next(); // 아이디 중복검사
		System.out.println("비밀번호 입력> "); String temppass = scanner.next();
		System.out.println("잔액 입력> "); double tempbalance = scanner.nextDouble();
		
		//처리 list -> add, get, size, remove, contains
		users.add( new BankDto(tempid , temppass , tempbalance ) );
		System.out.println(users);
		
		//출력
		
		
	}
	//처리 list -> add, get, size, remove, contains
	// 유저로그인 - 유저정보     BankDto login(){}	
	BankDto login(){
		//변수
		//Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("아이디 입력> "); String tempid = scanner.next(); // 아이디 중복검사
		System.out.println("비밀번호 입력> "); String temppass = scanner.next();
		//처리
		for(BankDto u : users) {
			if( u.getId().equals(tempid) && u.getPass().equals(temppass)) {	return u; }
		}
		return null;
		//출력
	}
	
	
	void show( BankDto user ){
	    System.out.printf("ID : %s\nPASS: %s\nBALANCE: %.0f\n", user.getId(), user.getPass(), user.getBalance()); 
	} 
	
	// 입금   (get)    - void deposite(BankDto1 user){};
	void deposite(BankDto user){
		
		//Scanner scanner = new Scanner(System.in);
		
		System.out.println("입금할 금액  입력> " ); 
		double tempbalance = scanner.nextDouble();
		
		if( tempbalance <= 0){System.out.println("0원 이하의 금액은 입급할 수 없습니다."); return;	}
		
		user.setBalance(user.getBalance() + tempbalance);
		System.out.println("입금완료");
	}
	
	
	
	// 출금   (get)    - void withdraw(BankDto1){}
	void withdraw( BankDto user){
		//Scanner scanner = new Scanner(System.in);
		System.out.println("출금할 금액 입력> " ); double tempbalance = scanner.nextDouble();
		if(user.getBalance() < tempbalance){System.out.println("잔액이 모자랍니다."); return;	}
		user.setBalance(user.getBalance() - tempbalance);
		System.out.println("출금완료");
		System.out.printf("잔액: %.0f원\n", user.getBalance());
	}
	
	// 유저삭제(remove) - void delete(BankDto1){}
	void delete(BankDto user) {
	    //Scanner scanner = new Scanner(System.in);
	    System.out.println("정말 삭제하시겠습니까? 비밀번호를 다시 입력해주세요> ");
	    String temppass = scanner.next();
	    
	    if( !user.getPass().equals(temppass) ) { 
	        System.out.println("비밀번호가 일치하지 않아 삭제할 수 없습니다."); 
	        return;
	    }
	    users.remove(user); 
	    System.out.println("계좌삭제가 완료되었습니다. 이용해 주셔서 감사합니다.");
	}
	
	
	// 종료            - void exit(    ){}
	void exit() {
	    System.out.println("은행 서비스가 종료되었습니다.");
	    System.exit(0); 
	}
}




public class BankProjectV3_3 {
	public static void main(String[] args) {

		List<BankDto>  users = new ArrayList<>();
		Bank      controller = new Bank(users);
		controller.menu();	
		
	}
}
