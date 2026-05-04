package com.the703.oop006;

//1.인터페이스 선언(규칙정하기)
interface RemoteControl{
	void chUp(); //자동으로 abstract가 붙음 :"채널 올리는 기능은 꼭 만들어
	void chDown();
}

//2. 인터페이스 구현(implements키원드 사용)
class SmartTv implements RemoteControl{

	@Override
	public void chUp() {
		System.out.println("스마트TV 채널을 올립니다.");
	}

	@Override
	public void chDown() {
		System.out.println("스마트TV 채널을 내립니다.");
	}
	
}


public class Interfacesimple001 {
	public static void main(String[] args) {

		RemoteControl remocon = new SmartTv();
		
		remocon.chUp();
		remocon.chDown();
		
	}
}
