package com.the703.basic010_ex;

// [1. 설계도 바구니] - 클래스 밖으로 꺼내서 나란히 둡니다.
class SmartTV {
    String brand;
    int volume;

    // 생성자 1: 기본 생성자 (아무 값도 안 넣었을 때)
    public SmartTV() {
        super();
        this.brand = "미정";
        this.volume = 0;
    }

    // 생성자 2: 브랜드와 볼륨을 직접 넣었을 때
    public SmartTV(String brand, int volume) {
        super();
        this.brand = brand;
        
        // [논리 퀴즈 구간]
        // 여기에 "볼륨이 100보다 크면 100으로 고정하라"는 if문을 작성해 보세요!
        if (volume > 100) {
            this.volume = 100;
        } else {
            this.volume = volume;
        }
    }

    // 볼륨을 1씩 올리는 기능
    void volumeUp() {
        this.volume = this.volume + 1; // 또는 this.volume++;
    }

    // 상태를 출력하는 기능
    void show() {
        System.out.printf("[브랜드: %s, 현재볼륨: %d]\n", brand, volume);
    }
}

// [2. 실행 작업대 바구니] - 파일 이름과 이 클래스 이름이 같아야 합니다!
public class ClassEx004_t1 {
    public static void main(String[] args) {
        
        // 테스트 1: LG TV를 볼륨 120으로 만들어보자 (생성자 2 사용)
        SmartTV s1 = new SmartTV("LG", 120); 
        s1.volumeUp(); // 볼륨을 하나 올린다
        s1.show();     // 결과는 어떻게 나올까요?

        // 테스트 2: 기본 세팅 TV를 만들어보자 (생성자 1 사용)
        SmartTV s2 = new SmartTV();
        s2.show();
    }
}

/*


*/
