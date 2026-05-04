package com.the703.oop004;

// 1. 부모 클래스 (이름 뒤에 2를 붙여서 중복 방지)
class Animal2 {
    void breathe() {
        System.out.println("숨을 쉽니다.");
    }
}

// 2. 자식 클래스 (강아지)
class Dog2 extends Animal2 {
    void bark() {
        System.out.println("멍멍! 짖습니다.");
    }
}

// 3. 자식 클래스 (고양이)
class Cat2 extends Animal2 {
    void meow() {
        System.out.println("야옹~ 하고 웁니다.");
    }
}

public class Polymor002 {
    public static void main(String[] args) {
        Animal2 a1 = new Dog2(); // 업케스팅
        Animal2 a2 = new Cat2(); // 업케스팅

        // 24번 줄 근처: 반드시 instanceof와 강제 형변환이 있어야 함!
        if (a1 instanceof Dog2) {
            Dog2 d = (Dog2) a1; // 다운케스팅
            d.bark();         
        }

        // --- a2가 진짜 Cat2인지 확인하고 울게 하기 ---
        if (a2 instanceof Cat2) {
            Cat2 c = (Cat2) a2; // 안전하게 다운캐스팅
            c.meow();         
        }
        
        // 공통 기능 실행
        a1.breathe();
        a2.breathe();
    }
}
