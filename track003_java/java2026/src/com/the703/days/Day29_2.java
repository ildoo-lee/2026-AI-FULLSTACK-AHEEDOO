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

//Q1. Player DTO 클래스 만들기
//속성:
//private String name;
//private int score;

class Player2{
	private String name;
	private int score;
	public Player2() { super();  }
	public Player2(String name, int score) { super(); this.name = name; this.score = score; }
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
		Player2 other = (Player2) obj;
		return Objects.equals(name, other.name) && score == other.score;
	}
	
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	public int getScore() { return score; }
	public void setScore(int score) { this.score = score; }
	
	
}

public class Day29_2 {
	public static void main(String[] args) { 

//		Q2. List (ArrayList) 출력
//		2-1. players 이름으로 ArrayList 만들기
		List<Player2> players = new ArrayList<>();
				
		
//		2-2. 데이터 추가:
//		new Player("Mario", 1200),
//		new Player("Luigi", 1500),
//		new Player("Peach", 1800),
//		new Player("Bowser", 900)
//		new Player("Bowser", 900)
		players.add(new Player2("Mario", 1200));
		players.add(new Player2("Luigi", 1500));
		players.add(new Player2("Peach", 1800));
		players.add(new Player2("Bowser", 900));
		players.add(new Player2("Bowser", 900));

		
//		2-3. for + size 이용해서 출력
		for(int i=0 ; i < players.size() ; i++) {
			System.out.println((i+1)+"\t"+players.get(i));
		}

//		출력 예시
//		1   Mario    1200
//		2   Luigi    1500
//		3   Peach    1800
//		4   Bowser   900
//		5   Bowser   900
		
		
		
//		Q3. List에서 출력을 보면 Bowser   900  라는 같은데이터를 넣었는데 2개가 나옴. 이유는?
//		4   Bowser   900
//		5   Bowser   900    답: 배열(기차) 방식 중복허용
				
		System.out.println();
//		Q4. Set (HashSet) 출력
//		4-1. setPlayers 이름으로 HashSet 만들기
		Set<Player2> setPlayers = new HashSet<>();
		
//		4-2. 동일한 데이터 넣기 (중복 허용 안됨)
		setPlayers.add(new Player2("Mario", 1200));
		setPlayers.add(new Player2("Luigi", 1500));
		setPlayers.add(new Player2("Peach", 1800));
		setPlayers.add(new Player2("Bowser", 900));
		setPlayers.add(new Player2("Bowser", 900));
		
//		4-3. Iterator 이용해서 출력
		Iterator<Player2> iter = setPlayers.iterator();
		int count=0;
		while(iter.hasNext()) {
			System.out.println((++count)+"\t"+iter.next());
		}
			
//		출력 예시
//		1   Mario    1200
//		2   Luigi    1500
//		3   Peach    1800
//		4   Bowser   900

		System.out.println();
//		Q5. Map (HashMap) 출력
//		5-1. mapPlayers 이름으로 HashMap 만들기
		Map<String, Player2> mapPlayers = new HashMap<>();
		
//		5-2.  데이터 넣기 (Key-Value 구조)
//		mapPlayers.put("mario", new Player("Mario", 1200));
//		mapPlayers.put("luigi", new Player("Luigi", 1500));
//		mapPlayers.put("peach", new Player("Peach", 1800));
//		mapPlayers.put("bowser", new Player("Bowser", 900));
		
		mapPlayers.put("mario", new Player2("Mario", 1200));
		mapPlayers.put("luigi", new Player2("Luigi", 1500));
		mapPlayers.put("peach", new Player2("Peach", 1800));
		mapPlayers.put("bowser", new Player2("Bowser", 900));
		
//		5-3. for-each + entrySet 이용해서 출력
		for (Map.Entry<String, Player2> entry : mapPlayers.entrySet()) {
		    System.out.println(entry.getKey() + "\t" + entry.getValue());
		}
		
//		출력 예시
//		mario   Mario    1200
//		luigi   Luigi    1500
//		peach   Peach    1800
//		bowser  Bowser   900

		
		
//		Q6. 정렬 문제
//		6-1. List코드에서 익명 클래스로 점수 오름차순 정렬
		players.sort(new Comparator<Player2>() {

			@Override
			public int compare(Player2 p1, Player2 p2) {
				return p1.getScore()-p2.getScore();
			}
			
		});
		
		System.out.println("\n오름차순");
		for(Player2 p : players) {
			System.out.println(p);
		}
		
		
		
//		6-2. 람다식으로 점수 내림차순 정렬
		players.sort((p1,p2)-> p2.getScore()-p1.getScore());
		
		System.out.println("\n내림차순");
		for(Player2 p : players) {
			System.out.println(p);
		}
		
		
		
		
//		6-3. 메서드 참조로 점수 오름차순 정렬
		players.sort(Comparator.comparingInt(Player2::getScore));
		
		System.out.println("\n오름차순");
		for(Player2 p : players) {
			System.out.println(p);
		}
		
		
//		출력 예시 (오름차순)
//		코드
//		Bowser   900
//		Bowser   900
//		Mario    1200
//		Luigi    1500
//		Peach    1800
		
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