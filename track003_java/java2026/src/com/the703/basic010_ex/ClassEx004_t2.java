package com.the703.basic010_ex;

import java.util.Scanner;

class Smartphone{
	String model;
	int battery;
	
//		input(): 스캐너로 모델명과 배터리 잔량을 입력받음.
	void input() {
		//int battery = 0;
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("모델명을 입력하시오>");
		model=scanner.next();
		
		System.out.print("배터리잔량을 입력하시오>");
		battery=scanner.nextInt();
	}
	
//		show(): 모델명과 배터리 상태를 출력함.
	void show() {
		System.out.println("모델명 : "+model);
		System.out.println("배터리 : "+battery);
	}
	
	public Smartphone() {
		super();
		
	}
	
	public Smartphone(String model, int battery) {
		super();
		this.model = model;
		this.battery = battery;
		
	}
	
	@Override
	public String toString() {
		return "Smartphone [model=" + model + ", battery=" + battery + "]";
	}
	
	
	
}

public class ClassEx004_t2 {
	public static void main(String[] args) {
		// 1. 처음부터 꽉 찬 배터리로 생성 시도 (논리 체크)
		Smartphone p1 = new Smartphone("iPhone15", 150);
		p1.show();
		
		// 2. 입력받아서 생성
		Smartphone p2 = new Smartphone();
		p2.input();
		p2.show();
	}
}



/*

[조건]

패키지명: com.the703.logic_test
클래스명: ClassEx_Final
부품 클래스: Smartphone

상태(멤버변수): String model (모델명), int battery (배터리 잔량)

행위(멤버함수):

input(): 스캐너로 모델명과 배터리 잔량을 입력받음.

show(): 모델명과 배터리 상태를 출력함.

생성자 필수 작성:

기본 생성자: 모델명은 "공폰", 배터리는 0으로 초기화.

인자 생성자: 모델명과 배터리를 받아서 저장하되, 배터리가 100을 초과해서 들어오면 100으로, 0 미만으로 들어오면 0으로 강제 고정하는 논리를 넣으시오.

출력
Plaintext
iPhone15    100    (<- 150을 넣었지만 100으로 고정되어야 함)

model입력> Galaxy24
battery입력> 85
Galaxy24    85

*/