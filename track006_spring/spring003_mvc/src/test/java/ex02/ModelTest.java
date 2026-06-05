package ex02;

import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.sql.DataSource;
import org.apache.ibatis.session.SqlSession;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.the703.dao.BoardMapper;
import com.the703.dao.TestMapper;
import com.the703.dto.BoardDto;
import com.the703.service.BoardService;

@RunWith(SpringJUnit4ClassRunner.class)  //1. spring 구동
@ContextConfiguration(locations = "classpath:config/root-context.xml")  //2. 설정파일
public class ModelTest {
	
	@Autowired ApplicationContext context; //3. Bean (스프링이 관리하는 객체) 생성 ~ 소멸
	@Autowired DataSource dataSource;
	@Autowired SqlSession sqlSession;
	@Autowired TestMapper testMapper;
	
	@Autowired BoardMapper boardMapper;
	@Autowired BoardService service;
	
	
	@Test
	public void test4() // throws UnknownHostException
	{
		//삽입
//		BoardDto dto = new BoardDto();
//		dto.setBname("first"); dto.setBpass("1111");
//		dto.setBtitle("service-첫번재 글쓰기"); dto.setBcontent("service-내용");
//		System.out.println(service.insert(dto));
		
//		전체리스트
		System.out.println(service.selectAll());
		
		
//		//삭제
//		System.out.println(boardMapper.delete(1));
//		BoardDto dto = new BoardDto(); dto.setBno(8);
//		System.out.println(service.delete(dto));
		
//		//수정
//		BoardDto dto2 = new BoardDto();
//		dto2.setBname("first"); dto2.setBno(1);
//		dto2.setBtitle("첫번재 테스트"); dto2.setBcontent("내용");
//		System.out.println(boardMapper.update(dto2)); //실행한 줄 수1
		
//		//검색
//		System.out.println(boardMapper.select(1));
//		System.out.println(service.detail(1));

	}
	
	
	
	@Ignore @Test public void test3() {System.out.println(testMapper.now());}
	@Ignore @Test public void test1() {System.out.println(context);}
	@Ignore @Test public void test2() {System.out.println(sqlSession);}
	
	
}
