package com.the703.basic016;

import java.io.File;

public class JavaIO001 {
	public static void main(String[] args) {
		//1. 경로체크
		String folder_abs = "C:\\file\\"; // 절대경로 - 시스템의 폴더기준, 나쁜 예, 
		                                  // "지구본의 위도/경도 좌표"를 찍어주는 방식
		String folder_rel = "src/com/the703/basic016/"; // 상대경로 - 현재작업 폴더기준
		                                                // "우리 현장 정문에서 우회전"
		String file_path  = "io001.txt";
		
		
		
		//2. 폴더+파일준비
		File folder = new File(folder_rel);    // ctrl + shift + o
		File file   = new File(folder_rel + file_path);
		
		
		//3. 폴더가 없으면 폴더(mkdirs) 및 파일만들기(createNewFile)
		try { // 일단 계획대로 진행하라 -> 한줄이라도 에러(예외)가 뜨면 catch로 점프
			if(!folder.exists()) {folder.mkdirs();     }
			if(!file.exists())   {file.createNewFile();}
		}catch(Exception e) { e.printStackTrace(); } // 사고수습센터: 문제가 생기면 보고하라
		
		System.out.println("폴더/파일 준비완료");
		//ctrl+f11(새로고침)
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

3. 보조스트림



*/
