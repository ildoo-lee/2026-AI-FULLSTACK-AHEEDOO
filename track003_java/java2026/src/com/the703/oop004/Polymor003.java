package com.the703.oop004;




public class Polymor003 {
	public static void main(String[] args) {
		//1. 위력의 핵심: "섞어서 담기"
		//부모 타입 배열 하나에 개, 고양이를 모두 담습니다.(자동 업케스팅)
		Animal2[] shelter= {
				new Dog2(),
				new Cat2(),
				new Dog2(),
				new Cat2(),
		};
		
		//2. 위력의 핵심: "한번에 시키기"
		//어떤 동물이든 상관없이 'Animal2'라면 숨은 쉬어야죠?
		System.out.println("=====전체 동물 공통 관리=====");
		for(Animal2 a : shelter) {
			a.breathe(); // 단 세 줄로 100마리든 1000마리든 관리 가능!
		}
		
		//3. 위력의 핵심 : "특수 능력 꺼내기" (다운 캐스팅)
		System.out.println("\n=====개별 특기 발휘=====");
		for(Animal2 a : shelter) {
			if (a instanceof Dog2) {
			    Dog2 d = (Dog2) a; // 직접 강제 형변환(다운캐스팅)
			    d.bark();
			} else if (a instanceof Cat2) {
			    Cat2 c = (Cat2) a;
			    c.meow();
			}
		}
		
		
	}
}


/*
for(int i=0;i<shelter.length;I++){
Animal2 a = shelter[i]; // shelter배열에서 0번째부터 순서대로 꺼내서 a에 넣어라
a.breathe;
}

//향상된 for문으로 하면
for(Animal2 a : shelter){
a.breathe;
}
 
 
 
*/
