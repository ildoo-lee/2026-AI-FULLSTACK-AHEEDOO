package com.the703.basic010_ex;

public class StaticEx003 {

	class Sawon3 {
		int pay = 10000; // 인스턴스변수 - new -  heap area  - 생성자관련 - this
		static int su = 10; // 클래스변수 - static - 메서드영역 - 생성자관련X(공용)-클래스명.변수
		static int basicpay = pay;// 클래스변수 = 인스턴스변수 - static은 인스턴스 변수(this) 사용 불가
		static int basicpay2;// 클래스변수 - static - 메서드영역 - 생성자관련X(공용)-클래스명.su

		public static void showSu() {
			System.out.println(su);
		} //인스턴스메서드

		public static void showPay() {
			System.out.println(this.pay);
		} //인스턴스메서드

		public void showAll001() {
			System.out.println(su);
			System.out.println(this.pay);
		} //클래스메서드

		public static void showAll002() {
			showAll001();
			System.out.println(this.pay);
		}//인스턴스메서드
	}

	public class MemberVarEx001{
	  public static void main(String[] args) {
	   Sawon3   sola = new Sawon3();  
	   sola.showAll001();
	  }
	}

/*

패키지명 : com.company.java010_ex
클래스명 :  MemberVarEx001
-- class Sawon3작성해주세요 
1. 인스턴스변수, 클래스변수, 지역변수 를 구분하시오.
2. 인스턴스메서드, 클래스메서드 구분하시오.
3. 오류나는 이유는?
class Sawon3{ 
    int pay      =10000;    
    static int su=10;     
    static int basicpay=pay;    
    static int basicpay2;    
    
    public static void showSu() {   System.out.println(su);  }          
    public static void showPay() {   System.out.println(this.pay);  }    
  
    public  void  showAll001() {   
       System.out.println(su);  
       System.out.println(this.pay);  
    } 
    public static  void  showAll002() {   
        showAll001();    
       System.out.println(this.pay);
    } 
} 
public class MemberVarEx001{
  public static void main(String[] args) {
   Sawon3   sola = new Sawon3();  
   sola.showAll001();
  }
}     

*/