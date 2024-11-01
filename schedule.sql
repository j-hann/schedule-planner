-- 스케쥴 테이블 생성
CREATE TABLE `T_SCHEDULE`
(
    `schedule_id`        int           NOT NULL,
    `user_id`            varchar(20)   NOT NULL,
    `schedule_password`  varchar(30)   NOT NULL,
    `schedule_title`     varchar(100)  NOT NULL,
    `schedule_contents`  varchar(1000) NOT NULL,
    `schedule_insert_dt` datetime      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `schedule_update_dt` datetime      NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 사용자 테이블 생성
CREATE TABLE `T_USER`
(
    `user_id`      varchar(20) NOT NULL,
    `user_name`    varchar(20) NOT NULL,
    `user_email`   varchar(50) NOT NULL,
    `user_join_dt` datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    `user_status`  char(1)     NOT NULL DEFAULT '1' COMMENT '정상: 1, 탈퇴: 2'
);

-- 제약조건 설정
ALTER TABLE `T_SCHEDULE`
    ADD CONSTRAINT `PK_T_SCHEDULE` PRIMARY KEY ( --T_SCHEDULE 테이블 PK 설정
                                                `schedule_id`
        );

ALTER TABLE `T_USER`
    ADD CONSTRAINT `PK_T_USER` PRIMARY KEY ( --T_USER 테이블 PK 설정
                                            `user_id`
        );

ALTER TABLE `T_SCHEDULE`
    ADD CONSTRAINT `FK_T_USER_TO_T_SCHEDULE_1` FOREIGN KEY ( --T_SCHEDULE 테이블 FK 설정
                                                            `user_id`
        )
        REFERENCES `T_USER` (--참조 테이블, 참조 컬럼
                             `user_id`
            );


-- 일정 생성 쿼리
INSERT INTO T_SCHEDULE(schedule_id,
                       user_id,
                       schedule_password,
                       schedule_title,
                       schedule_contents,
                       schedule_insert_dt,
                       schedule_update_dt)
VALUES (1,
        "작성자1",
        "12345",
        "오늘의 일정",
        "과제 제출하기",
        current_timestamp,
        current_timestamp);

-- 일정 목록 조회 쿼리
SELECT *
FROM T_SCHEDULE
ORDER BY schedule_update_dt DESC ; --수정일 기준 내림차순 정렬

-- 일정 상세 조회 쿼리
SELECT *
FROM T_SCHEDULE
WHERE schedule_id = 1;

-- 일정 수정 쿼리
UPDATE T_SCHEDULE
SET schedule_title = "오늘의 일정 수정", schedule_update_dt = current_timestamp
WHERE schedule_id = 1;

-- 일정 삭제 쿼리
DELETE
FROM T_SCHEDULE
WHERE schedule_id = 1;

-- 사용자 생성 쿼리
INSERT INTO T_USER(user_id,
                   user_name,
                   user_email,
                   user_join_dt,
                   user_status)
VALUES ("550e8400-e29b-41d4-a716-441155770000",
        "작성자 닉네임",
        "abcd@gmail.com",
        current_timestamp,
        "1");

-- 사용자 정보 조회 쿼리
SELECT *
FROM T_USER
WHERE user_id = "550e8400-e29b-41d4-a716-441155770000";

-- 사용자 정보 수정 쿼리
UPDATE T_USER
SET user_name = "작성자 닉네임 수정"
WHERE user_id = "550e8400-e29b-41d4-a716-441155770000";

-- 사용자 삭제 쿼리
DELETE
FROM T_USER
WHERE user_id = "550e8400-e29b-41d4-a716-441155770000";