```mermaid
classDiagram

    class 플레이어 {
        +플레이어체크(플레이어id)
    }

    class 캐릭터 {
        <<abstract>>
        #캐릭터명
        #레벨
        #HP
        #공격력
        +스킬발동()
        +get스킬명()
        +get캐릭터명()
        +get레벨()
        +getHP()
        +get공격력()
    }

    class 전사 {
        +전사(캐릭터명, 레벨)
        +스킬발동()
        +get스킬명()
    }

    class 마법사 {
        +마법사(캐릭터명, 레벨)
        +스킬발동()
        +get스킬명()
    }

    class 전투 {
        +캐릭터생성(플레이어id, 캐릭터명, 직업, 레벨)
        +몬스터공격(플레이어id, character)
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