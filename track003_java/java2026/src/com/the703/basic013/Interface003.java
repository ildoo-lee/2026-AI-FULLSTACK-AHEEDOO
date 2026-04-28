package com.the703.basic013;

class Papa{   int brain; }
class Mama{   int brain; }
class Son extends Papa, Mama{}  

interface Animal2{
   String company="(주) thejoa";    //Q7.  interface에서의 멤버변수에 붙는 키워드는? 
   void eat();     //Q8.  interface에서의 멤버함수에 붙는 키워드는? 
}

class Saram implements Animal2{ 
   @Override public void eat() { 
      company="kakao";  
      System.out.println( Animal2.company  + " 랍스탑.... 냠냠 "   );
   }
} 
