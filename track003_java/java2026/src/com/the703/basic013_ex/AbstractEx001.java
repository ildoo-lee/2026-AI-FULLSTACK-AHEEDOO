package com.the703.basic013_ex;

/*

상속도
                 Object
                    ↑
                  Robot {   abstract charge() , move() , speak() }
      ↑             ↑               ↑ 
CleaningRobot  SecurityRobot   CookingRobot   
{@charge() ,    {@charge() ,    {@charge() ,
 @ move() ,     @move() ,        @move() , 
 @ speak() }}   @speak() }}      @speak() }}

*/

abstract class Robot {
	String name;
	String model;
	int battery;
	
	abstract void charge();
	abstract void move();
	abstract void speak();
} // end class

class CleaningRobot extends Robot {
	String name = "Robo1 청소로봇"; 
	

	@Override void charge() {System.out.print(this.name + " 충전 중... 배터리"); };
	@Override void move() {System.out.print(this.name + " 청소 중");}
	@Override void speak() {System.out.println(this.name + " 먼지를 제거합니다!");};	
} // end class
	
class SecurityRobot extends Robot {
	String name = "Robo2 경비로봇";  

	@Override void charge() {System.out.print(this.name + " 태양광 충전중... 배터리");};
	@Override void move() {System.out.print(this.name + " 경비 중");};
	@Override void speak() {System.out.println(this.name + " 이상없음 안전확보");};	
} // end class
	
class CookingRobot extends Robot {
	String name = "Robo3 요리로봇";  
	
	@Override void charge() {System.out.print(this.name + " 인덕션 충전 중... 배터리");};
	@Override void move() {System.out.print(this.name + " 요리 중%");};
	@Override void speak() {System.out.println(this.name + " 오늘의 메뉴는 파스타");};	
} // end class



public class AbstractEx001 {
	   public static void main(String[] args) {
		   
		  //Robot robot  = new Robot();  // Q1.why? 오류이유? abstract 클래스
		   
	      System.out.println("\n--- 로봇 배열 시뮬레이션 ---");
	      Robot [] bots = { new CleaningRobot(), new SecurityRobot() , new CookingRobot() };
	      int[] levels = { 50, 70, 95 };
	      
//bots[0] = 1번지 CleaningRobot{@charge(),@move() , @ speak() }-Robot{ model , battery / ---, ---, ---}   
//bots[1] = 2번지 SecurityRobot{@charge(),@move() , @ speak() }-Robot{ model , battery / ---, ---, ---}   
//bots[2] = 3번지  CookingRobot{@charge(),@move() , @ speak() }-Robot{ model , battery / ---, ---, ---} 
  
	    for(int i=0;i<bots.length;i++) {
		    bots[i].model = "Robo" + (i+1);
		    System.out.println(bots[i].model);

		    bots[i].charge(); 
		    bots[i].battery = levels[i];
		    System.out.println(bots[i].battery+"%");
		    
		    bots[i].speak();
	    }
	      
   }
}

/*

연습문제1)
패키지명 : com.the703.basic013_ex 
클래스명 : AbstractEx001.java 
주어진조건 : 
1) 상속도
           Object
             ↑
            Robot {   abstract charge() , move() , speak() }
   ↑          ↑               ↑ 
CleaningRobot  SecurityRobot   CookingRobot   
{@charge() ,    {@charge() ,    {@charge() ,
 @ move() ,     @move() ,           @move() , 
 @ speak() }}         @speak() }}          @speak() }}

2)main
public class AbstractEx001 {
   public static void main(String[] args) {
      //Robot robot  = new Robot();  // Q1.why? 오류이유?
      System.out.println("\n--- 로봇 배열 시뮬레이션 ---");
      Robot [] bots = { new CleaningRobot(), new SecurityRobot() , new CookingRobot() };
      int[] levels = { 50, 70, 95 };
    
   }
}
 
출력화면 :  
--- 로봇 배열 시뮬레이션 ---
Robo1 청소로봇 충전 중... 배터리 50%
Robo1 청소로봇: 먼지를 제거합니다!
Robo2 경비로봇 태양광 충전 중... 배터리 70%
Robo2 경비로봇: 이상 없음. 안전 확보!
Robo3 요리로봇 인덕션 충전 중... 배터리 95%
Robo3 요리로봇: 오늘의 메뉴는 파스타입니다!


*/