package com.the703.basic010_ex;

import com.the703.basic010.UserInfo2;

public class UserInfoSon2 extends UserInfo2 {
	public void show() {
		System.out.println(":: 홍길동 아버지 이름 > " + name);
		System.out.println(":: 홍길동 아버지 비밀번호 > " + safeCode);
		// System.out.println(":: 홍길동 아버지 집 > " + house);
		// System.out.println(":: 홍길동 아버지 아이큐 > " + iQ);
		System.out.println(":: 홍길동 아버지 아이큐 > " + getiQ());
	}
}
