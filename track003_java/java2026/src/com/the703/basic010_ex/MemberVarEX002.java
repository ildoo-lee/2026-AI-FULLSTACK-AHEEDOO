package com.the703.basic010_ex;

class Student {
	String name = "홍길동"; //인스턴스 변수 - 힙 영역
	int kor = 90; //인스턴스 변수 - 힙 영역
	int eng = 85; //인스턴스 변수 - 힙 영역
	static int studentCount = 0; //클래스 변수 - 메소드 영역 (static은 기본 존제해야 하니 클래스)

	static int total = kor + eng; //클래스 변수 - 메소드 영역 - 에러: 인스턴스 변수의 합이 클래스 변수라고 함.

	static int maxScore = 100; //클래스 변수 - 메소드 영역

	public Student() { // 생성자
		studentCount++;
	}

	public int getTotalScore() { //인스턴스 메소드
		return kor + eng;
	}

	public static void showStudentCount() { //클래스 메소드
		System.out.println("전체 학생 수: " + studentCount);
	}

	public static void showName() { //클래스 메소드
		System.out.println(name); // 클래스 메소드에 인스턴스 변수를 사용해서?
	}

	public void showInfo() { // 인스턴스 메소드
		System.out.println("이름: " + name);
		System.out.println("총점: " + getTotalScore());
	}
}

public class MemberVarEX002 { // 메소드 영역
	public static void main(String[] args) {
		Student s1 = new Student(); //Student s1 스택 영역, new Student() 인스턴스 영역
		Student s2 = new Student(); //Student s2 스택 영역, new Student() 인스턴스 영역

		s1.showInfo();
		Student.showStudentCount();
	}
}

/*

////////////////////////////////////////////////////////////////////////////////////
[RUNTIME DATA AREA]
----------------------------------------------------------------------------------
[METHOD:정보] Class.class Student() studentCount total   maxScore  
             getTotalScore()  showStudentCount()   showName()  showInfo()  MemberVarEX002.class
----------------------------------------------------------------------------------
[HEAP:동적]                               |          [STACK:지역]
name = "홍길동";kor = 90;eng = 85;         ←              s1

-----------------------------------------------------------------------------------

//////////////////////////////////////////////////////////////////////////////////// 
 




패키지명 : com.company.java010_ex
클래스명 : MemberVarEx002

-- class Student 작성해주세요

- 문제 1. 다음 코드에서 인스턴스변수, 클래스변수, 지역변수를 구분하시오.  ( 보관되는 영역도 추가 )
- 문제 2. 인스턴스메서드와 클래스메서드를 구분하시오.  
- 문제 3. 오류가 발생하는 이유를 설명하시오.
- 문제 4. runtime data area 위치영역 그림그리기

class Student {
    String name = "홍길동";        
    int kor = 90;                  
    int eng = 85;                 
    static int studentCount = 0;    

    static int total = kor + eng;   

    static int maxScore = 100;     

    public Student() {
        studentCount++;             
    }

    public int getTotalScore() {
        return kor + eng;        
    }

    public static void showStudentCount() {
        System.out.println("전체 학생 수: " + studentCount);  
    }

   public static void showName() {
         System.out.println(name);  
   }

    public void showInfo() {
        System.out.println("이름: " + name);            
        System.out.println("총점: " + getTotalScore());    
    }
}

public class MemberVarEx002 {
    public static void main(String[] args) {
        Student s1 = new Student();     
        Student s2 = new Student();     

        s1.showInfo();                  
        Student.showStudentCount();    
    }
}

*/