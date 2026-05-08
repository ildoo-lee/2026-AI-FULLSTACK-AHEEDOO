package com.the703.days;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

class Player1{
	private String name;
	private int score;
	
	public Player1() { super(); }
	public Player1(String name, int score) { super(); this.name = name; this.score = score; }
	@Override
	public String toString() { return name + "\t"+score; }
	
	@Override
	public int hashCode() { return Objects.hash(name, score); }
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Player1 other = (Player1) obj;
		return Objects.equals(name, other.name) && score == other.score;
	}
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	public int getScore() { return score; }
	public void setScore(int score) { this.score = score; }
	
	
}

public class Day029_1 {
	public static void main(String[] args) { 
		
		//2-1. players 이름으로 ArrayList 만들기
		List<Player1> players = new ArrayList<>();
		players.add(new Player1("Mario", 1200));
		players.add(new Player1("Luigi", 1500));
		players.add(new Player1("Peach", 1800));
		players.add(new Player1("Bowser", 900));
		players.add(new Player1("Bowser", 900));
		
		//2-3. for + size 이용해서 출력
		for(int i = 0; i < players.size(); i++) {
			System.out.println((i+1)+"\t"+ players.get(i));
		}
		
		//Q3. List에서 출력을 보면 Bowser   900  라는 같은데이터를 넣었는데, 
	    //2개가 나옴. 이유는? List 열차 중복허용
	  
	  
	  
	    System.out.println();
	    //4-1. setPlayers 이름으로 HashSet 만들기
	    Set<Player1> setPlayers = new HashSet<>();
	    setPlayers.add(new Player1("Mario", 1200));
	    setPlayers.add(new Player1("Luigi", 1500));
	    setPlayers.add(new Player1("Peach", 1800));
	    setPlayers.add(new Player1("Bowser", 900));
	    setPlayers.add(new Player1("Bowser", 900));
	  
	    //Iterator 출력
	    Iterator<Player1> iter = setPlayers.iterator();
	    int count = 0;
	    while(iter.hasNext()) {
	       System.out.println((++count)+"\t"+iter.next());
	    }
	    
	    
	    System.out.println();
		//Q5. Map (HashMap) 출력
	    Map<String, Player1> mapPlayers = new HashMap<>();
	    mapPlayers.put("mario", new Player1("Mario", 1200));
	    mapPlayers.put("luigi", new Player1("Luigi", 1500));
	    mapPlayers.put("peach", new Player1("Peach", 1800));
	    mapPlayers.put("bowser", new Player1("Bowser", 900));
		
	    //5-3. for-each + entrySet 이용해서 출력
	    for (String key : mapPlayers.keySet()) {
            System.out.println(key + "\t" + mapPlayers.get(key));
        }
	    
	 // 1. 익명 클래스 방식으로 오름차순 정렬
	    
	    players.sort(new Comparator<Player1>() {
	    	
	        @Override
	        public int compare(Player1 p1, Player1 p2) {
	            // 오름차순: 앞의 값(p1)에서 뒤의 값(p2)을 뺍니다.
	            // 결과가 음수면 p1이 작다는 뜻이므로 그대로 두고, 
	            // 양수면 p1이 크다는 뜻이므로 p2와 자리를 바꿉니다.
	            return p1.getScore() - p2.getScore();
	        }
	    });
	    
	    System.out.println("\n오름차순");
	    for (Player1 p : players) {
	        System.out.println(p);
	    }
	    
	 // 2. 람다 방식으로 내림차순 정렬 (p2 - p1으로 순서 바꿈)
	    players.sort((p1, p2) -> p2.getScore() - p1.getScore());
	    
	    System.out.println("\n내림차순");
	    for (Player1 p : players) {
	        System.out.println(p);
	    }
	    
	 // 3. 메서드 참조 방식으로 다시 오름차순 정렬
	    players.sort(Comparator.comparingInt(Player1::getScore));
	    
	    System.out.println("\n오름차순");
	    for (Player1 p : players) {
	        System.out.println(p);
	    }
	    
	    
	    
	}
}


/*
Q1. Player DTO 클래스 만들기
속성:
private String name;
private int score;

Q2. List (ArrayList) 출력
2-1. players 이름으로 ArrayList 만들기
2-2. 데이터 추가:
new Player("Mario", 1200),
new Player("Luigi", 1500),
new Player("Peach", 1800),
new Player("Bowser", 900)
new Player("Bowser", 900)

2-3. for + size 이용해서 출력

출력 예시
1   Mario    1200
2   Luigi    1500
3   Peach    1800
4   Bowser   900
5   Bowser   900

Q3. List에서 출력을 보면 Bowser   900  라는 같은데이터를 넣었는데 2개가 나옴. 이유는?
4   Bowser   900
5   Bowser   900


Q4. Set (HashSet) 출력
4-1. setPlayers 이름으로 HashSet 만들기
4-2. 동일한 데이터 넣기 (중복 허용 안됨)
4-3. Iterator 이용해서 출력
출력 예시
1   Mario    1200
2   Luigi    1500
3   Peach    1800
4   Bowser   900

Q5. Map (HashMap) 출력
5-1. mapPlayers 이름으로 HashMap 만들기
5-2.  데이터 넣기 (Key-Value 구조)
mapPlayers.put("mario", new Player("Mario", 1200));
mapPlayers.put("luigi", new Player("Luigi", 1500));
mapPlayers.put("peach", new Player("Peach", 1800));
mapPlayers.put("bowser", new Player("Bowser", 900));
5-3. for-each + entrySet 이용해서 출력
출력 예시
mario   Mario    1200
luigi   Luigi    1500
peach   Peach    1800
bowser  Bowser   900

Q6. 정렬 문제
6-1. List코드에서 익명 클래스로 점수 오름차순 정렬
6-2. 람다식으로 점수 내림차순 정렬
6-3. 메서드 참조로 점수 오름차순 정렬

출력 예시 (오름차순)
코드
Bowser   900
Bowser   900
Mario    1200
Luigi    1500
Peach    1800
*/