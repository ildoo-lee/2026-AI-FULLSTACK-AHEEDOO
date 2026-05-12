package com.the703.basic018;


//1. 프로세스 - 실행중인 프로그램
//2. 프로세스구성 - 자원(데이터, 메모리) + Thread(실제 작업수행)
//3. 작업수행클래스 - Thread(상속 - run - start) , Runnable

class Animal{String name;}

class Dog extends Animal implements Runnable{  //1) extends Thread

	@Override public void run() { 
		for(int i=0;i<5;i++) {
			System.out.print("멍");
			try { Thread.sleep(1000); } catch (InterruptedException e) {  e.printStackTrace(); }
		}
		
	}    
	
}

public class Thread003_Runnable {
	public static void main(String[] args) {
		Thread sound = new Thread(new Dog());  sound.start();
		
		for(int i=0;i<5;i++) {
			System.out.print("◖⚆ᴥ⚆◗");
			try { Thread.sleep(1000); } catch (InterruptedException e) {  e.printStackTrace(); }
		}	
		
		
		
	}
}

// ◖⚆ᴥ⚆◗ 
//˙Ꙫ˙ ˙Ꙫ˙ ˙Ꙫ˙ ˙Ꙫ˙ ˙Ꙫ˙ 
//꿀   꿀   꿀   꿀   꿀


/*

1/Thread
1. 프로세스 : 실행 중인 하나의 프로그램
2. 멜티프로세스  : 동시에 여서 프로세스 실행
3. 구성
   - 자원( Resource) + Thread(자원으로 실제 작업 수행)
   - 모든 프로세스는 최소한 하나의 스레드(main)
   - 같은 프로세스 내의 스레드들은 서로 자원을 공유



*/