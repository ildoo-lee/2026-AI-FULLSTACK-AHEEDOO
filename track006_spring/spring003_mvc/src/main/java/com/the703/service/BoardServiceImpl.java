package com.the703.service;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.the703.dao.BoardMapper;
import com.the703.dto.BoardDto;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired BoardMapper dao;  //db관련

	@Override public List<BoardDto> selectAll() {  return dao.selectAll(); }

	@Override
	public int insert(BoardDto dto) {
		try {dto.setBip(InetAddress.getLocalHost().getHostAddress());}
		catch(UnknownHostException e) {e.printStackTrace();}
		return dao.insert(dto);
	}

	@Override
	public BoardDto detail(int bno) {
		// 조회수 올리기
		dao.updateHit(bno);
		return dao.select(bno);
	}

	@Override 
	public BoardDto editView(int bno) {  
		return dao.select(bno); 
	}

	@Override 
	public int edit(BoardDto dto) { 
	    // true 1  false 0 count
	    int count = dao.checkPass(dto); 
	    
	    if(count == 1) { return dao.update(dto); } 
	    else           { return 0; }
	    
//	    int result = -1; //비밀번호 안맞음
//	    BoardDto find = dao.select(dto.getBpass() );
//	    if(find.getBpass().equals(dto.getBpass() )) {reuslt = dao.update(dto);}
//	    return result;
	}

	@Override 
	public int delete(BoardDto dto) { 
	    int count = dao.checkPass(dto);
	    
	    if(count == 1) { return dao.delete(dto.getBno()); } 
	    else           { return 0; }
	}
	

}
