```mermaid
graph LR
    %% 액터 (Actor)
    플레이어["플레이어"]

    %% 시스템 경계 및 유스케이스 (System & UseCases)
    subgraph DnF_Battle_System ["던전앤파이터 전투 시스템"]
        UC1["캐릭터생성"]
        UC2["몬스터공격"]
        UC3["플레이어체크"]
    end

    %% 관계 (Relationships)
    
    %% 플레이어는 캐릭터생성과 몬스터공격을 수행함
    플레이어 --- UC1
    플레이어 --- UC2

    %% 캐릭터생성과 몬스터공격은 플레이어체크를 반드시 포함함 (의존/포함 관계)
    UC1 -.&lt;&lt;include&gt;&gt;.-> UC3
    UC2 -.&lt;&lt;include&gt;&gt;.-> UC3