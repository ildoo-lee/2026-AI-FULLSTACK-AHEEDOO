package com.the703.basic018;

import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;

public class Chat001_Client {
	public static void main(String[] args) {
		// 2) 클라이언트 연결 요청
		Socket user = null;
		
		
		try {
			user = new Socket("127.0.0.1" , 703);
			System.out.println("[Client] 3. AS센터에 고객문의~!");
			
			Thread sender = new Sender(user);   sender.start();
			Thread receiver = new Receiver(user);   receiver.start();
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} // ip, port
		
		
	}
}

/*

1. Http 통신 - 단방향 (client 요청 있을때, server응답하고 연결 정료)
2. Socket통신 - 양방향 (특정포트를 통해서 실시간으로 정보를 주고받음 - tcp/udp)
3. 소켓통신흐름 - 
   1) 서버소켓(as 센터) , 포트바인딩 ( 문열기)
   2) 클라이언트 연결 요청, 수락
   3) 클라이언트 소켓(socket) ↔ 상담사(socket) 가 읽어들이기 (InputStream > 프로그램기준 > OutputStream)


*/