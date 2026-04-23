package com.the703.basic010;

public class UserInfo2{
	public    String name;     // 아무데서나 다 접근가능
	protected String safeCode; // 자식에서 사용가능 (extends 시)
              String house;    // 피키지(폴더)
    private   int    iQ;       // 클래스 내부 (아버지의  IQ는 아버지만)
    
    //alt+shift+s : Generate Getters and Setters iQ 사용할 수 있도록 해줌
	
    /**
     * @return
     */
    public int getiQ() { return iQ; }
	public void setiQ(int iQ) { this.iQ = iQ; }
    
}

//public > protected > default(package) 아무것도 안붙은 지정접근자> private