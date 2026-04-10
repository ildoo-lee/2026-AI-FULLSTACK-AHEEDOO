package com.the703.bank;

import java.util.Scanner;

public class Bank_lid_001 {

	public static void main(String[] args) {
        // 불필요한 ID PW 재확인 등 삭제
		
		// 변수
		Scanner scanner = new Scanner(System.in);
		int no = -1, id = -1, pass = -1, balance = -1, tid = -1, tpass = -1;

		for (;;) {
			System.out.println("🌟💰 WELCOME TO BANK SYSTEM 💰🌟\n" + "[1] ➕ 계좌 추가\n" // 가입개념, 또 1번하면 다시 ID와 PASS를 새로
																						// 생성하는 개념
					+ "[2] 🔍 계좌 조회\n" + "[3] 💵 입금하기\n" + "[4] 💸 출금하기\n" + "[5] 🗑️ 계좌삭제\n");

			// 기본 번호 입력
			System.out.print("👉 번호를 선택하세요:");
			no = scanner.nextInt();

			// 계좌 추가 (가입)
			if (no == 1) { //아이디, 비번 입력하여 가입하기
				
				System.out.print("ID: ");
				id = scanner.nextInt();

				System.out.print("PASS: ");
				pass = scanner.nextInt();

				System.out.print("balace: ");
				balance = scanner.nextInt();

				
			}

			// 계좌 조회 ( 임시공간에 아이디와 비번입력받기)
			else if (no == 2) {
				
				System.out.println("잔액: " + balance);

				}
			
			// 입금
			else if (no == 3) {
				int dep = -1;

				System.out.println("입금할 금액을 입력해주세요");
				System.out.println("금액: ");
				dep = scanner.nextInt();
				balance += dep;
				System.out.println("잔액: " + balance);

			}

			// 출금
			else if (no == 4) {
				int wit = -1;
						
				System.out.println("출금할 금액을 입력해주세요");
				System.out.println("금액: ");
				wit = scanner.nextInt();
				balance -= wit;
				System.out.println("잔액: " + balance);

			 }

			// 계좌삭제
			else if (no == 5) {

				id = -1;
				pass = -1;
				balance = -1;
				System.out.println("계좌가 삭제되었습니다");

			}

			// 종료
			else if (no == 9) {
				System.out.println("종료합니다.");
				break;
			}


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

🌟💰 WELCOME TO BANK SYSTEM 💰🌟

[1] ➕ 계좌 추가
[2] 🔍 계좌 조회
[3] 💵 입금하기
[4] 💸 출금하기
[5] 🗑️ 계좌 삭제  

👉 번호를 선택하세요:



*/