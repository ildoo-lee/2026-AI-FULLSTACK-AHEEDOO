package com.the703.basic016;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;

public class JavaIO004_img {
	public static void main(String[] args) throws IOException {
		//#1. 경로
		String origin = "src/com/the703/basic016/ma.jpg"; 
		String target1  = "src/com/the703/basic016/ma1.jpg";
		String target2  = "src/com/the703/basic016/ma2.jpg";
		
			
		//#2. byte 이미지파일 원본 읽어들여서 쓰기
		//   InputStream   >  [프로그램]  >     OutputStream
		InputStream bis = new FileInputStream(origin);     // 원본 읽어들여서(read)
		OutputStream bos = new FileOutputStream(target1);  // ma1.jpg (write)
		
		int cnt1=0;
		while( (cnt1 = bis.read()) != -1) {// 원본 읽어들여서(read)
			bos.write((byte) cnt1); // ma1.jpg (write)
		}
		bos.close(); bis.close();
		System.out.println(">> byte 이미지 복사완료!");
		//#3. char 이미지파일 원본 읽어들여서 쓰기
		//   Reader     >    [프로그램]    >    Writer
		Reader cr = new FileReader(origin);
		Writer cw = new FileWriter(target2);
		
		int cnt2=0;
		while( (cnt2 = cr.read()) != -1) {// 원본 읽어들여서(read)
			cw.write((char) cnt2); // ma2.jpg (write)
		}
		cw.close(); cr.close();
		System.out.println(">> char 이미지 복사완료!");
		
		
		
	}
}



/*

1. Java I/O

- 입력(input)과 출력(putput)
- 두 대상간의ㅡ 데이터를 주고 받는것
- 스트림이란? 사용 연결통로

      입력스트림   →   [프로그램]    →    출력스트림
    InputStream                     OutputStream
      Reader                           Writer




2. Java I/O 분류

- byte(모든정료-그림, 멀티미디어, 문자) / char(문자)
- byte (InputStream/OutputStream) / char (Reader/Writer)

3. 보조스트림



*/