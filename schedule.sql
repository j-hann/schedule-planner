-- SCHEDULE 테이블 생성
CREATE TABLE `SCHEDULE`
(
    `id`         int           NOT NULL,
    `user_id`    char(36)      NOT NULL,
    `password`   varchar(30)   NOT NULL,
    `title`      varchar(100)  NOT NULL,
    `contents`   varchar(1000) NOT NULL,
    `created_at` datetime      NOT NULL DEFAULT current_timestamp,
    `updated_at` datetime      NOT NULL DEFAULT current_timestamp
);

-- USER 테이블 생성
CREATE TABLE `USER`
(
    `id`         char(36)    NOT NULL,
    `name`       varchar(20) NOT NULL,
    `email`      varchar(50) NOT NULL,
    `created_at` datetime    NOT NULL DEFAULT current_timestamp,
    `updated_at` datetime    NOT NULL,
    `status`     char(1)     NOT NULL DEFAULT '1' COMMENT '정상: 1, 탈퇴: 2'
);

-- 제약조건 설정

ALTER TABLE `SCHEDULE`
    ADD CONSTRAINT `PK_SCHEDULE` PRIMARY KEY (--SCHEDULE 테이블 PK 설정
                                              `id`
        );

ALTER TABLE `USER`
    ADD CONSTRAINT `PK_USER` PRIMARY KEY (--USER 테이블 PK 설정
                                          `id`
        );


ALTER TABLE `SCHEDULE`
    ADD CONSTRAINT `FK_USER_TO_SCHEDULE_1` FOREIGN KEY (--SCHEDULE 테이블 FK 설정
                                                        `user_id`
        )
        REFERENCES `USER` (--참조 테이블, 참조 컬럼
                           `id`
            );

-- 일정 생성 쿼리
INSERT INTO SCHEDULE(id,
                     user_id,
                     password,
                     title,
                     contents,
                     created_at,
                     updated_at)
VALUES (1,
        "작성자1",
        "12345",
        "오늘의 일정",
        "과제 제출하기",
        current_timestamp,
        current_timestamp);

-- 일정 목록 조회 쿼리
SELECT *
FROM SCHEDULE
ORDER BY updated_at DESC; --수정일 기준 내림차순 정렬

-- 일정 상세 조회 쿼리
SELECT *
FROM SCHEDULE
WHERE id = 1;

-- 일정 수정 쿼리
UPDATE SCHEDULE
SET title     = "오늘의 일정 수정",
    updated_at = current_timestamp
WHERE id = 1;

-- 일정 삭제 쿼리
DELETE
FROM SCHEDULE
WHERE id = 1;

-- 사용자 생성 쿼리
INSERT INTO USER(id,
                 name,
                 email,
                 created_at,
                 updated_at,
                 user_status)
VALUES ("550e8400-e29b-41d4-a716-441155770000",
        "작성자 닉네임",
        "abcd@gmail.com",
        current_timestamp,
        current_timestamp,
        "1");

-- 사용자 정보 조회 쿼리
SELECT *
FROM USER
WHERE id = "550e8400-e29b-41d4-a716-441155770000";

-- 사용자 정보 수정 쿼리
UPDATE USER
SET name = "작성자 닉네임 수정",
    updated_at = current_timestamp
WHERE id = "550e8400-e29b-41d4-a716-441155770000";

-- 사용자 삭제 쿼리
DELETE
FROM USER
WHERE id = "550e8400-e29b-41d4-a716-441155770000";