package com.the703.basic010_ex;










public class ClassEx004_t3 {
	public static void main(String[] args) {
        // 1. 처음부터 값을 넣어서 상품 등록 (인자 생성자)
        Product p1 = new Product("삼각김밥", 1200, 10);
        p1.show();

        // 2. 일단 빈 상품을 만들고 나중에 정보 입력 (기본 생성자 + input)
        Product p2 = new Product();
        p2.input();
        p2.show();
    }
}