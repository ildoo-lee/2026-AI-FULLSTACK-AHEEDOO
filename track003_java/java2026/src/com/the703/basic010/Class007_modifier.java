package com.the703.basic010;

//1) basic010, basic010_ex
class UserInfo{
	public    String name;     // 아무데서나 다 접근가능
	protected String safeCode; // 자식에서 사용가능 (extends 시)
  /*default*/ String house;    // 피키지(폴더)
    private   int    iQ;       // 클래스 내부 (아버지의  IQ는 아버지만)
    
    //alt+shift+s : Generate Getters and Setters iQ 사용할 수 있도록 해줌
	
    /**
     * @return
     */
    public int getiQ() { return iQ; }
	public void setiQ(int iQ) { this.iQ = iQ; }
    
}

class UserInfoSon extends UserInfo{
	public void show() {
		System.out.println(":: 홍길동 아버지 이름> " + name);
		System.out.println(":: 홍길동 아버지 비번> " + safeCode);
		System.out.println(":: 홍길동 아버지 집> " + house);
		//System.out.println(":: 홍길동 아버지 아이큐> " + iQ);
		System.out.println(":: 홍길동 아버지 아이큐> " + getiQ());
	}
}


///// 위 아래 다른 부품이다. 


public class Class007_modifier {
	public static void main(String[] args) {
		System.out.println("\n\n1. LEE 아버지 정보");
		UserInfo user = new UserInfo();
		user.name="홍상직";  // public 이 붙었으니 아무데서나 접근가능
		user.safeCode="1234";
		user.house="전라남도 장성군";
		//user.iQ = 148; // The field UserInfo.iQ is not visible
		user.setiQ(148);
		System.out.println(user.getiQ());
	}

}


/*********
1. 지정접근자
- 클래스의 구성요소에 대한 접근을 제한하는 역할
              클래스내부   패키짖(폴더)  하위클래스   그외
public        O          O          O          O
protected     O          O          O          X
dafault       O          O          X          X
private       O          X          X          X       



*/