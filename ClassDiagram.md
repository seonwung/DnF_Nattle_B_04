```mermaid
classDiagram

    class 플레이어 {
        +플레이어체크(플레이어id String) boolean
    }

    class 캐릭터 {
        <<abstract>>
        #캐릭터명 String
        #레벨 int
        #HP int
        #공격력 int
        +스킬발동() int
        +get스킬명() String
        +get캐릭터명() String
        +get레벨() int
        +getHP() int
        +get공격력() int
    }

    class 전사 {
        +전사(캐릭터명 String, 레벨 int)
        +스킬발동() int
        +get스킬명() String
    }

    class 마법사 {
        +마법사(캐릭터명 String, 레벨 int)
        +스킬발동() int
        +get스킬명() String
    }

    class 전투 {
        +캐릭터생성(플레이어id String, 캐릭터명 String, 직업 String, 레벨 int) 캐릭터
        +몬스터공격(플레이어id String, character 캐릭터) String
    }

    class Create_Character_UI {
        <<boundary>>
    }

    class Attack_Monster_UI {
        <<boundary>>
    }

    전사 --|> 캐릭터 : 상속
    마법사 --|> 캐릭터 : 상속

    Create_Character_UI --> 전투 : 캐릭터생성 요청
    Attack_Monster_UI --> 전투 : 몬스터공격 요청

    전투 --> 플레이어 : 플레이어체크
    전투 --> 캐릭터 : 생성/공격
    ```