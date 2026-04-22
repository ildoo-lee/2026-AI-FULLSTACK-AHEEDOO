package com.the703.basic010;

//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수)와 행위(멤버함수)

class Farm{
	
	//상태(멤버변수)
	String name; // 인스턴스변수 - heap area - new O  - 생성자
	int age;
	
	
	static String FarmName="(주)동물농장"; //클래스 변수 - 클래스명.변수명   FarmName 만 명시적 초기화
	static int Farmnum;   // 클래스변수 - method area - new X - 생성자 X    이건 명시적 초기화 안함. 복잡한건 나중에
	static String FarmBoss;                                          //이것도 명시적 초기화 안함
	static { Farmnum=2; FarmBoss="신동엽";} // 초기화 블록
	//행위(멤버함수)
	static void numPlus() { Farmnum++; /* this.area */} // 클래스.메서드
	
	
	void show() { // 인스턴스 메서드 heap area - new O -생성자
		System.out.println("\n\n:::::::::::::::::::::::");
		System.out.println("::이름 : " + this.name);
		System.out.println("::나이 : " + this.age);
		System.out.println("::동물농장 인원 : " + Farm.Farmnum);
	}
}

public class Class005 {

	public static void main(String[] args) {
		System.out.println("\n\n0.동물농장");
		System.out.println("::회사이름> " + Farm.FarmName);
		System.out.println("::회사사장> " + Farm.FarmBoss);
		System.out.println("::회사인원> " + Farm.Farmnum);
		
		System.out.println("\n\n1.동물식구 - this - 각각");
		Farm cat = new Farm(); // 1) new 객체만들기   2) Farm() 초기화   3) cat번지
		cat.name = "kitty"; 
		cat.age=3; 
		Farm.numPlus(); 
		cat.show(); 
		
		Farm dog = new Farm(); // 1) new 객체만들기   2) Farm() 초기화   3) dog번지
		dog.name = "doori"; 
		dog.age=2;
		/* dog.numPlus(); */
		Farm.numPlus(); 
		dog.show();
		
		//Farm.numPlus();
	}

}
/////////////////////////////////////////////////////////////
/*
    초기화          기본값      명시적초기화      초기화블록      생성자
    FarmName       null      (주)동물농장     (주)동물농장      X
    FarmNum        0          0             2              X
    FarmBoss       null       null          신동엽           X
--------------------------------------------------------------
    cat   name=null,         →              →              →
          age=0              →              →              → 
    dog   name=null,         →              →              →
          age=0


*/

//////////////////////////////////////////////////////////////
/* [RUNTIME DATA AREA]
--------------------------------------------------------------------
[METHOD:정보, static, final] Farm.class    ,  Class005.class
   Farm.FarmName="(주)동물농장"; Farm.Farmnum=2; Farm.FarmBoss="신동엽"; Farm.numPlus()
---------------------------------------------------------------------
[HEAP:동적]                   |  [STACK:지역]

2번지{name="doori", age=7}      ← cat[2번지]
1번지{name="kitty", age=3}      ← cat[1번지]
---------------------------------------------------------------------
*/
//////////////////////////////////////////////////////
