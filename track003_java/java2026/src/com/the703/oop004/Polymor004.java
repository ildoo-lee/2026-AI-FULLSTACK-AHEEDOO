package com.the703.oop004;

//1. 부모클래스: 모든 음료의 공통점
class Drink{
	String name;
	public Drink(String name) {
		this.name = name;
	}
    //[toString 오버라이딩] 객체의 정보를 문자열로 변환(return)
	@Override
	public String toString() {
		return "Drink [name=" + name + "]";
	}
}

//2. 자식클래스: 커피 특화 기능
class Coffee extends Drink{
	int shot;
	public Coffee(String name, int shot) {
		super(name); // 부모에게 이름전달
		this.shot=shot;
	}
	
	//[일반 오버라이드] 동작을 재정의(출력형)
	@Override
	public String toString() {
		return "Coffee [name=" + name + "]\nCoffee [shot=" + shot + "]";
	}
	
	void callBarista() {
		System.out.println("바리스타를 호출합니다.\n원두를 갈아주세요.");
	}
	
}


public class Polymor004 {
	public static void main(String[] args) {
		//[A] 업캐스팅: 아메리카노를 '음료' 이름표로 관리
		Drink d = new Coffee("아메리카노",2);
		
		//1. 이름표는 Drink지만, 실제 알맹이가 Coffee라 자식의 toString이 나옵니다.
		System.out.println(d);
		
		//2. 하지만 d.callBarista();는 불가능합니다.(Drink이름표엔 없거든요)
		((Coffee)d).callBarista(); // 다운캐스팅
		
		//[B] 다운캐스팅: 잠시 가려진 기능을 꺼내기
		if(d instanceof Coffee) { // 안전장치: 너 커피맞지?
			Coffee c = (Coffee)d;
			c.callBarista();
		}
		
		
	}
}
