package com.the703.dao;

import java.util.HashMap;
import java.util.List; 
import com.the703.dto.BoardDto;

@Mapper
public interface BoardMapper {  
   public  int  insert(BoardDto dto);
   public  int  update(BoardDto dto);
   public  int  updateHit(int bno); // 조회수올리기
   public  int  delete(int bno);
   public  int  checkPass(BoardDto dto); // 비밀번호 확인
   
   public  List<BoardDto>  selectAll();
   public       BoardDto   select(int bno);
   
   /* paging */
   /* paging */
   public List<BoardDto>   select10(HashMap<String, Integer> map);
   
   public int              selectCnt(); 
   
}