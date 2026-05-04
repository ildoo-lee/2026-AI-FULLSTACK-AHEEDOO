package com.the703.oop005;

abstract class Application{
	//공통기능 : 모든 전자제품은 전기를 소모함
	void consumeEnergy() {
		System.out.println("에너지를 소비중입니다...");
	}
	
	//★부모가 숙제를 내줌. 추상 메서드 : 전원을 켜면 무엇을 할지는 기기마다 다름
	abstract void turnOn();
}


class Tv extends Application{

	@Override
	void turnOn() {
		System.out.println("TV: 화면이 켜지고 방송이 나옵니다.");
	}
	
}

class Radio extends Application{

	@Override
	void turnOn() {
		System.out.println("Radio: 스피커에서 소리가 나옵니다.");
	}
	
}

class Aircon extends Application{

	@Override
	void turnOn() {
		System.out.println("Aircon: 시원한 바람이 나옵니다.");
	}
	
}

public class Abstractclass002 {
	public static void main(String[] args) {
		// 부모 이름표(Application)로 바구니를 만듭니다.
		Application[] myRoom = {new Tv(), new Radio(), new Aircon()};
		
		for(Application app : myRoom) {
			app.consumeEnergy(); //공통기능 수행
			app.turnOn(); // 각자의 특수 기능 수행. 이것이 마법
			System.out.println("-----------------------");
		}
		
		
		//Application a = new Tv();
		
		
	}
}
