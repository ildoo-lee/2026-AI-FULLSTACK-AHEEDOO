package com.the703.basic012_ex;

class A11 {
    int a; // (1) 인스턴스변수, 힙 영역, 뉴, 디스(각각)

    A11() { }

    A11(int a) { this.a = a; } // (2)생성자   // this.a 인스턴스변수,    a 지역변수
 
    //(3) void show() 
    void show() { // 인스턴스메서드, 힙 영역, new 생성자, this 각각
        this.a = 11; 
        System.out.println(this.a); 
    }

    //(4) static void classMethod() // 클래스 메서드 - 메서드영역, new와 관련없음(공용 static)
    static void classMethod() { this.a = 12; } //Q2 에러 포인트 : static 이라서 this.a 인스턴스사용불가 Day025 파일참조

    //(5) int showZ() 인스턴스메서드
    int showZ() { 
        int a=0; // Q2 지역변수, 에러 포인트 : int a=0; 수동으로 초기화를 해줘야한다. 
        return a; 
    }
}

public class RepeatQ123 {
    public static void main(String []args) { 
        A11 a1 = new A11(); 
        (b) 
    }
} // end class

//Q1. 위의 문제에서 (1),(2),(3),(4),(5)를 [ 클래스변수, 인스턴스변수, 지역변수, 클래스메서드, 인스턴스메서드 ]에서 고르시오.

//Q2. 클래스 A11에서 오류나는 곳을 수정하고 그 이유를 적으시오.
//1)static void classMethod() { this.a = 12; } //Q2 에러 포인트 : static 이라서 this.a 인스턴스사용불가 Day025 파일참조
//2)int a=0; // Q2 지역변수, 에러 포인트 : int a=0; 수동으로 초기화를 해줘야한다.

//Q3. (b)번 위치에서

//메모리 빌려오고, 객체 생성하는 역할 : (     new     )
//String은 null, int는 0으로 초기화하는 역할 : (  A11()   )
//new A11()한 주소를 갖고 있는 것은 : ( 참조변수 a1  )

//Q4. 기본생성자를 반드시 선언해야하는 경우를 적으시오.
//     다른생성자를 작성할 때. 상속받을 때.

//Q5. 다음 중 오버로딩이 성립하기 위한 조건이 아닌 것은? c, d(모두 고르시오) 메서드이름이 같고 파라미터 타입과 갯수
//a. 메서드의 이름이 같아야 한다.  →  오버로딩 조건 O
//b. 매개변수의 개수나 타입이 달라야 한다.   →  O
//c. 리턴타입이 달라야 한다.   →  X
//d. 매개변수의 이름이 달라야 한다.   →  X   A(int brain), A(int money)


//Q6. 다형성이란? 하나의 타입으로 여러 형태를 사용할 수 있는 성질

//Q7. 다음코드에서 다음에 해당하는 부분을 작성하시오.

//7-1. 상속도
//7-2. 각 클래스에서 사용할수 있는 멤버변수, 멤버함수



