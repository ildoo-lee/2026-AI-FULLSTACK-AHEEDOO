package com.the703.v3;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Scanner;


class Item {
	String name;
	double price;
	
	public Item(String name, double price) {
		this.name = name;
		this.price = price;
	}
}

class CartDto {
	private String id;
	private String pass;
	private double cartTotal; 
	private List<Item> cartList;
	
	public CartDto() { super(); }
	public CartDto(String id, String pass, double cartTotal) { super(); this.id = id; this.pass = pass; this.cartTotal = cartTotal; this.cartList = new ArrayList<>(); }
	@Override public String toString() { return "CartDto [id=" + id + ", pass=" + pass + ", cartTotal=" + cartTotal + "]"; }
	
	@Override public int hashCode() { return Objects.hash(cartTotal, id, pass, cartList); }
	@Override public boolean equals(Object obj) { if (this == obj) return true; if (obj == null) return false; if (getClass() != obj.getClass()) return false; CartDto other = (CartDto) obj; return Double.doubleToLongBits(cartTotal) == Double.doubleToLongBits(other.cartTotal) && Objects.equals(id, other.id) && Objects.equals(pass, other.pass) && Objects.equals(cartList, other.cartList); }
	
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	public String getPass() { return pass; }
	public void setPass(String pass) { this.pass = pass; }
	public double getCartTotal() { return cartTotal; }
	public void setCartTotal(double cartTotal) { this.cartTotal = cartTotal; }
	
	// 장바구니 리스트 Getter
	public List<Item> getCartList() { return cartList; }
}

class Shop {
	List<CartDto> users; 
	Scanner scanner = new Scanner(System.in);
	
	public Shop() { super(); }
	public Shop(List<CartDto> users) { super(); this.users = users; }
	
	public void menu() {
		int menu = -1; 
		
		while(menu != 9) {
			System.out.print("\n\n🛒🌟 WELCOME TO JEWELRY SHOP 🌟🛒\n\n"
					+ "[1] 📝 회원 가입\n"
					+ "[2] 🔍 장바구니 내역 조회\n" 
					+ "[3] ➕ 장바구니 상품 추가\n" 
					+ "[4] ➖ 장바구니 상품 빼기\n"
					+ "[5] 🗑️ 회원 탈퇴\n"  
					+ "[9]    쇼핑몰 종료\n\n"
					+ "👉 메뉴를 선택하세요:");
			menu = scanner.nextInt();
			scanner.nextLine();
			
			if(menu == 1) { join(); } 
			else if(menu == 9) { 
			    exit();
			}
			else {
				CartDto find = login(); 
				if(find == null) { System.out.println("❌ 회원 정보를 확인해주세요."); continue; }
				
				switch(menu) {
					case 2 : show(find); break;       
					case 3 : addItem(find); break;    
					case 4 : removeItem(find); break; 
					case 5 : delete(find); break;     
				}
			}
		}
	}
	
	public void join() {
		System.out.println("신규 아이디 입력> "); String tempid = scanner.next(); 
		System.out.println("비밀번호 입력> "); String temppass = scanner.next();
		
		users.add(new CartDto(tempid, temppass, 0)); 
		System.out.println("회원가입이 완료되었습니다! 장바구니가 생성되었습니다.");
	}
	
	CartDto login() {
		System.out.println("아이디 입력> "); String tempid = scanner.next(); 
		System.out.println("비밀번호 입력> "); String temppass = scanner.next();
		
		for(CartDto u : users) {
			if(u.getId().equals(tempid) && u.getPass().equals(temppass)) { return u; }
		}
		return null;
	}
	
	// [조회] 장바구니 리스트를 순회하며 상식적으로 출력
	void show(CartDto user) {
		System.out.print("\n\n🛒 내 장바구니 리스트 🛒\n");
		System.out.println("--------------------------------");
		if(user.getCartList().isEmpty()) {
			System.out.println("(장바구니가 비어 있습니다)");
		} else {
			// 리스트에 담긴 실제 상품들을 하나씩 꺼내서 보여줌
			for(int i = 0; i < user.getCartList().size(); i++) {
				Item item = user.getCartList().get(i);
				System.out.printf(" [%d] %s (%.0f원)\n", (i + 1), item.name, item.price);
			}
		}
		System.out.println("--------------------------------");
	    System.out.printf("💰 총 결제 예정 금액: %.0f원\n", user.getCartTotal()); 
	} 
	
	// [추가] 상품을 선택하면 객체 형태로 장바구니 리스트에 추가
	void addItem(CartDto user) {
		System.out.print("\n\n✨💎 JEWELRY PRODUCT LIST 💎✨\n\n"
				+ "[1] 💎 드롭 귀걸이 (15,000원)\n"
				+ "[2] 💫 링 귀걸이   (12,000원)\n"
				+ "[3] 📿 진주 목걸이 (35,000원)\n"
				+ "[4] 💍 큐빅 반지   (20,000원)\n\n"
				+ "👉 담을 상품 번호를 선택하세요:");
		int itemChoice = scanner.nextInt();
		
		double itemPrice = 0;
		String itemName = "";
		
		if(itemChoice == 1) { itemPrice = 15000; itemName = "드롭 귀걸이"; }
		else if(itemChoice == 2) { itemPrice = 12000; itemName = "링 귀걸이"; }
		else if(itemChoice == 3) { itemPrice = 35000; itemName = "진주 목걸이"; }
		else if(itemChoice == 4) { itemPrice = 20000; itemName = "큐빅 반지"; }
		else { System.out.println("❌ 잘못된 상품 번호입니다."); return; }
		
		// 금액 누적
		user.setCartTotal(user.getCartTotal() + itemPrice);
		// 실제 리스트에 상품 객체 추가
		user.getCartList().add(new Item(itemName, itemPrice));
		
		System.out.printf("\n✨ [%s]가 장바구니에 추가되었습니다! (+%.0f원)\n", itemName, itemPrice);
	}
	
	
	void removeItem(CartDto user) {
		// 장바구니가 비어있으면 뺄 수 없음
		if(user.getCartList().isEmpty()) {
			System.out.println("\n❌ 장바구니가 비어있어 뺄 상품이 없습니다.");
			return;
		}
		
		
		System.out.print("\n\n🗑️❌ REMOVE PRODUCT FROM CART ❌🗑️\n\n");
		for(int i = 0; i < user.getCartList().size(); i++) {
			Item item = user.getCartList().get(i);
			System.out.printf("[%d] 💸 %s (-%.0f원)\n", (i + 1), item.name, item.price);
		}
		System.out.print("\n👉 제외할 장바구니 상품 번호를 선택하세요:");
		int itemChoice = scanner.nextInt();
		
		
		if(itemChoice < 1 || itemChoice > user.getCartList().size()) {
			System.out.println("❌ 잘못된 번호입니다.");
			return;
		}
		
		
		int targetIndex = itemChoice - 1; 
		Item removeItem = user.getCartList().get(targetIndex);
		
		
		user.setCartTotal(user.getCartTotal() - removeItem.price);
		user.getCartList().remove(targetIndex); 
		
		System.out.printf("\n🗑️ 장바구니에서 [%s]를 제외했습니다.\n", removeItem.name);
		System.out.printf("현재 장바구니 총액: %.0f원\n", user.getCartTotal());
	}
	
	void delete(CartDto user) {
	    System.out.println("정말 탈퇴하시겠습니까? 비밀번호를 다시 입력해주세요> ");
	    String temppass = scanner.next();
	    
	    if(!user.getPass().equals(temppass)) { 
	        System.out.println("❌ 비밀번호가 일치하지 않아 탈퇴할 수 없습니다."); 
	        return;
	    }
	    users.remove(user); 
	    System.out.println("회원 탈퇴가 완료되었습니다. 이용해 주셔서 감사합니다.");
	}
	
	void exit() {
	    System.out.println("쇼핑몰 시스템이 종료되었습니다.");
	    System.exit(0); 
	}
}

public class ShopProjectV3 {
	public static void main(String[] args) {
		List<CartDto> users = new ArrayList<>();
		Shop controller = new Shop(users);
		controller.menu();	
	}
}