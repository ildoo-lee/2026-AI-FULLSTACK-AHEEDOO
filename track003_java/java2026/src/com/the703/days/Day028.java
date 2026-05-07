package com.the703.days;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Objects;
import java.util.Set;


class Milk {
 private String mname;
 private int mprice;

 public Milk() { super(); }
 public Milk(String mname, int mprice) { super(); this.mname = mname; this.mprice = mprice; }
 @Override public String toString() { return mname + "\t" + mprice; }

 
 @Override public int hashCode() { return Objects.hash(mname); }
 @Override public boolean equals(Object obj) { if (this == obj) return true; if (obj == null || getClass() != obj.getClass()) return false; Milk other = (Milk) obj; return Objects.equals(mname, other.mname); }

 public String getMname() { return mname; }
 public int getMprice() { return mprice; }
}

public class Day028 {
	public static void main(String[] args) {
		
		// [2, 3번] ArrayList (기차 칸 방식: 순서대로, 중복 허용)
        List<Milk> milks = new ArrayList<>();
        milks.add(new Milk("바나나우유", 1300));
        milks.add(new Milk("메론맛우유", 1800));
        milks.add(new Milk("커피우유", 1500));
        milks.add(new Milk("커피우유", 1500)); // 중복 허용됨

        // [4번] for + size 출력
        System.out.println("1. List (순서O, 중복O)");
        for (int i = 0; i < milks.size(); i++) {
            System.out.println((i + 1) + "\t" + milks.get(i)); // 아래 방법과 이 방법 둘두 돼? 무슨 차이? 동일?
        }
        
        
        
        
        // 오름차순
        System.out.println("\n\n가겨순으로 오름차순");
        
        //1. 익명적객체
//        milks.sort( new Comparator<Milk>() {
//			@Override public int compare(Milk o1, Milk o2) { 
//				return Integer.compare(o1.getMprice(), o2.getMprice()); 
//				}
//       	
//        });
        
        
        //2. 람다식
//        milks.sort( (m1, m2) ->  Integer.compare(m1.getMprice(), m2.getMprice())  );
        //@FunctionalInterface   public interface Comparator<T>{int compare(T o1, T o2)}
        
        
        //3.참조형 Integer 부품객체에 compare라는 기능박스
        // error milks.sort( Integer::compare )
        milks.sort( Comparator.comparingInt(Milk::getMprice)   ); // Milk 객체에서 가격 꺼내야함.
        
        int i=0;
        for(Milk m :   milks) { System.out.printf("%d     %s    %d\n" , ++i, m.getMname(),  m.getMprice()); }
        //  void java.util.List.sort( Comparator<? super Milk> c )
        //  리턴값 void (안에서 알아서처리)
        //  Comparator<? super Milk> c   -  Comparator 비교 부품객체  <? super Milk> Milk 포함한 부모객체
         
        
        
        
        
        // [5, 6번] HashSet (주머니 방식: 순서없음, 중복 제거)
        Set<Milk> sets = new HashSet<>();
        sets.add(new Milk("바나나우유", 1300));
        sets.add(new Milk("메론맛우유", 1800));
        sets.add(new Milk("커피우유", 1500));
        sets.add(new Milk("커피우유", 1500)); // 중복 제거됨!

        // [7번] Iterator 출력
        System.out.println("\n2. Set 출력 (순서X, 중복제거)");
        Iterator<Milk> iter = sets.iterator(); // 안내원
        int count = 0;
        while (iter.hasNext()) { // 손전등
            System.out.println((++count) + "\t" + iter.next()); // 집게로 태그 당기면 value 딸려나와 
        }
        
//        while(iter.hasNext()) {
//        	Milk m = iter.next();
//        	System.out.printf("%d \t %s \t %d\n", ++count, m.getMname(), m.getMprice());
//        }

        // [8, 9번] HashMap
        Map<String, Milk> maps = new HashMap<>();
        maps.put("banana", new Milk("바나나우유", 1300));
        maps.put("melon", new Milk("메론맛우유", 1800));
        maps.put("coffee", new Milk("커피우유", 1500));
        maps.put("coffee2", new Milk("커피우유", 1500)); // Key가 다르면 Value가 같아도 OK

        // [10번] for-each + keySet 출력
        System.out.println("\n3. Map 출력 (Key-Value)");
        for (String key : maps.keySet()) {
            System.out.println(key + "\t" + maps.get(key));
        }
        
        System.out.println();
        for (Entry<String, Milk> e : maps.entrySet()) { // e.getKey(), e.getValue()
            System.out.printf("%s  %s  %s\n", e.getKey(), e.getValue().getMname(), e.getValue().getMprice());
        }
        
        
    }
}


/*
Q1. 빈칸 채우기
1.  List는 순서가 [ 배열, 기차 ] 구조로 데이터를 관리하며, 중복을 [허용]
    - 주요 메서드: add, get, size, remove, contains
2. Set은 순서가[주머니 ] 구조로 데이터를 관리하며,  중복을 [허용하지 않음]
    - 주요 메서드: add, 향상된 for/Iterator, size, remove, contains
3. Map은 [_Key___]와 [__Value__]의 쌍으로 데이터를 관리한다. 
    - 주요 메서드: put, get(key), size, remove, contain(containsKey, containsValue), KeySet, entrySet
 
---

Q2. ArrayList, HashSet, HashMap을 작성하시오.  

1. Milk Dto 클래스 만들기  
   - 속성 : private String mname; private int mprice
   
class MilkDto{
private String mname; 
private int mprice;

getters/setters, 생성자, toString, hashCode와 equals
}

2. milks 이름으로 ArrayList 만들기 
List<MilkDto> milks = new ArrayList<String>();
 
3. 다음의 데이터 넣기  
   new Milk("바나나우유", 1300),  
   new Milk("메론맛우유", 1800),  
   new Milk("커피우유", 1500),  
   new Milk("커피우유", 1500)
   
Milks.add( new Milk("바나나우유", 1300) );  
Milks.add( new Milk("메론맛우유", 1800) );  
Milks.add( new Milk("커피우유", 1500) );  
Milks.add( new Milk("커피우유", 1500) );
   
4. for + size 이용해서 데이터 출력  
```
1     바나나우유       1300
2     메론맛우유       1800
3     커피우유         1500
4     커피우유         1500
```

for(int i=0 ; i < milks.size() ; i++) {
			MilkDto m = milks.get(i);
			System.out.println((i+1) 
		                + "\t" + m.getMname() 
		                + "\t" + m.getMprice());
		}
 
5. sets 이름으로 HashSet 만들기
Set<MilkDto> sets = new HashSet<>();
  
  
6. 다음의 데이터 넣기  
   new Milk("바나나우유", 1300),  
   new Milk("메론맛우유", 1800),  
   new Milk("커피우유", 1500),  
   new Milk("커피우유", 1500)  
   
   
sets.add(new MilkDto("바나나우유", 1300));
sets.add(new MilkDto("메론맛우유", 1800));
sets.add(new MilkDto("커피우유", 1500));
sets.add(new MilkDto("커피우유", 1500)); // 중복 hashCode/equals 필요   
   
7. Iterator 이용해서 데이터 출력   
```
1     바나나우유       1300
2     메론맛우유       1800
3     커피우유         1500
```
Iterator<MilkDto> iter = sets.iterator();
int count = 0;
while(iter.hasNext()) {
    MilkDto m = iter.next();
    System.out.println((++count) + "\t" + m.getMname() + "\t" + m.getMprice());
}

 
 
8. maps 이름으로 HashMap 만들기  


Map<String, MilkDto> maps = new HashMap<>();


9. 다음의 데이터 넣기 (Key-Value 구조)  
   maps.put("banana", new Milk("바나나우유", 1300));  
   maps.put("melon", new Milk("메론맛우유", 1800));  
   maps.put("coffee", new Milk("커피우유", 1500));  
   maps.put("coffee2", new Milk("커피우유", 1500));  

10. for-each + keySet 이용해서 데이터 출력  
```
banana    바나나우유       1300
melon     메론맛우유       1800
coffee    커피우유         1500
coffee2   커피우유         1500
``` 

for(String key : maps.keySet()) {
    MilkDto m = maps.get(key); // 이름표로 사물함 열기
    System.out.println(key + "\t" + m.getMname() + "\t" + m.getMprice());
}

*/