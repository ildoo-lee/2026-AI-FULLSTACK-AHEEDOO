package ex02;
 
import java.net.UnknownHostException;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.the703.dao.UserMapper;
import com.the703.dto.AuthDto;
import com.the703.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)  //1. spring 구동
//@ContextConfiguration(locations = "classpath:config/root-context.xml")
@ContextConfiguration(
		locations = {"classpath:config/root-context.xml" , "classpath:config/security-context.xml"})
public class ModelTest2 {
	@Autowired UserMapper user;
	@Autowired UserService service;
	@Autowired @Qualifier("passwordEncoder") PasswordEncoder pwencoder;
	//import org.springframework.security.crypto.password.PasswordEncoder;
	
	/* security */
	/* security */
	@Test public void test3() {
		AuthDto dto2 = new AuthDto();    dto2.setEmail("a@a");
		System.out.println(service.readAuth(dto2));
	
	
	/* security */
	/* security */
	//@Ignore @Test public void test2() {
		/* 로그인시 인가 - 이메일 문자열 하나만 던져서 권한까지 엮인 정보 가져오기 */
//		AuthDto dto2 = new AuthDto();    dto2.setEmail("a@a");
//		System.out.println(user.readAuth(dto2));
		
		/* 권한2개 - 회원 ADMIN (insert가 아니라 insertAuth를 호출해야 함) */
//		AuthDto dto1 = new AuthDto();   
//		dto1.setEmail("a@a");  
//		dto1.setAuth("ROLE_ADMIN");
//		System.out.println(user.insertAuth(dto1)); // ◀ insertAuth로 변경!
	
		
		/* 회원가입시 암호화 성공했으면 주석달고 위에 권한실행 */
		/* 회원가입 (암호화) pwencoder.excoder("a") */
//        UserDto dto = new UserDto();
//        dto.setNickname("a");
//        dto.setBpass( pwencoder.encode("a") );
//        dto.setEmail("a@a");
//        dto.setMobile("010-0000-0000");
//        //dto.setBip(InetAddress.getLocalHost().getHostAddress());
//        //user.insert(dto);
//        System.out.println( service.insert(dto) );
		
		
	}
	
	
	
	
	
	@Ignore @Test public void test1() throws UnknownHostException {
		//이메일중복 : findMyEmail - email
//		System.out.println(user.findByEmail("aaa@gmail.com"));
		
		//마이페이지 : findByUno - uno
//		System.out.println(user.findByUno(2)); //갖고있는 유저번호
		
		//로그인 : findLogin - email = #{email} and bpass = #{bpass}
//		UserDto dto2 = new UserDto();   
//		dto2.setEmail("aaa@gmail.com");
//		dto2.setBpass("1111");          
		//dto2.setMobile("010-1111-1111");
//		System.out.println(user.findLogin(dto2));
		
		//회원가입 : insert - UserDto : nickname, bpass, email, moble, bip
//		UserDto dto = new UserDto(); 
//		dto.setNickname("aaa");
//		dto.setBpass("1111"); 
//		dto.setEmail("aaa@gmail.com");     
//		dto.setMobile("010-1111-1111");
//		dto.setBip(InetAddress.getLocalHost().getHostAddress());
//		System.out.println(user.insert(dto));
		
		
	}
	
}