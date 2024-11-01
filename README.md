
# 💻 프로젝트 소개
#### 📅 **일정 관리 사이트** 📅

## 🚀 개발 기간
> 2024.10.30 - 2024.11.08


## 🌱 개발 환경
- `openjdk version '17.0.2'`
- `springframework.boot version '3.3.5'`
- `IDE : IntelliJ`

## 🪧 커밋 컨벤션
🎉 begin: 프로젝트 시작 <br>
✨ feat : 새로운 기능 추가, 구현<br>
📝 docs : 문서 파일 추가 및 수정<br>
🔧 add :  파일 추가 & 코드 수정<br>
✏️ typos : 단순 오타 수정<br>
🐛 fix : 버그 수정<br>
🚚 rename : 파일, 경로, route를 옮기거나 이름 변경<br>
♻️ refactor : 코드 리팩토링<br>

## ⚒️ API 명세서 & ERD
### 📄 API 명세서
<details>
<summary>API 명세서</summary>
<br/>

#### 🗓️Schedule
|    기능    | method |URL|
|:--------:|:------:|:---:|
|  일정 생성   | POST  |/schedules|
| 일정 목록 조회 | GET  |/schedules|
| 일정 상세 조회 | GET  |/schedules/{schedule_Id}|
|  일정 수정   | PUT  |/schedules/{schedule_Id}|
|  일정 삭제   | DELETE  |/schedules/{schedule_Id}|

<details>
<summary>✅ 일정 생성</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
| 일정 생성 | POST  |/schedules|

#### Request Eelements
|        파라미터        |   타입    | 필수 여부 |           설명           |
|:------------------:|:-------:|:-----:|:----------------------:|
|      user_id       | String  |   Y   |         사용자 ID         |
|     user_name      | String  |   Y   |         사용자 이름         |
| schedule_password  | String  |   Y   |        일정 비밀번호         |
|   schedule_title   | String  |   Y   |         일정 제목          |
| schedule_contents  | String  |   Y   |         일정 내용          |
| schedule_insert_dt | String |   Y   |   일정 작성 일자(datetime)   |
| schedule_update_dt |  String   |   Y   | 일정 최종 수정 일자 (datetime) |

#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |     설명 |
|:-----:|:-------:|:-----:|:------:|
| schedule_id | Integer |   Y   |  일정 ID |

#### 요청 예시

```json
  {
    "user_id" : "550e8400-e29b-41d4-a716-441155770000",
    "user_name" : "작성자1",
    "schedule_password" : "12345",
    "schedule_title" : "오늘의 일정",
    "schedule_contents" : "과제 제출하기",
    "schedule_insert_dt" : "2024-10-30",
    "schedule_update_dt" : "2024-10-31"
  }
```
#### 응답 예시
- Statue Code 201 Created [생성 성공]
```json
  {
    "message" : "일정 생성에 성공했습니다.",
    "schedule_id" :"1"
  }
```
- Statue Code 400 Bad Request [잘못된 요청]
```json
  {
    "error": "일정 생성에 실패했습니다."
  }
```
- Statue Code 401 Unauthorized [권한 없음]
```json
  {
    "error": "일정 생성 권한이 없습니다."
  }
```
</details>

<details>
<summary>✅ 일정 목록 조회</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
| 일정 목록 조회 | GET  |/schedules|

#### Request Eelements
- x

#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |           설명           |
|:-----:|:-------:|:-----:|:----------------------:|
| schedule_id | Integer |   Y   |         일정 ID          |
|user_id | String  |   Y   |         사용자 ID         |
|     user_name      | String  |   Y   |         사용자 이름         |
| schedule_password | String  |   Y   |        일정 비밀번호         |
| schedule_title | String  |   Y   |         일정 제목          |
| schedule_contents | String  |   Y   |         일정 내용          |
| schedule_insert_dt | String |   Y   |   일정 작성 일자(datetime)   |
| schedule_update_dt |  String   |   Y   | 일정 최종 수정 일자 (datetime) |

#### 응답 예시
- Statue Code 200 OK [응답 성공]
```json
{
  "page": 1,
  "list_size": 10,
  "data": [
    {
      "schedule_id" :"1",
      "user_id" : "550e8400-e29b-41d4-a716-441155770000",
      "user_name" : "작성자1",
      "schedule_password" : "12345",
      "schedule_title" : "오늘의 일정",
      "schedule_contents" : "과제 제출하기",
      "schedule_insert_dt" : "2024-10-30",
      "schedule_update_dt" : "2024-10-31"
    },
    {
      "schedule_id" :"2",
      "user_id" : "450e8400-a29b-41d4-a726-441166330000",
      "user_name" : "작성자2",
      "schedule_password" : "5456a",
      "schedule_title" : "운동 하기",
      "schedule_contents" : "웨이트 1시간, 유산소 30분",
      "schedule_insert_dt" : "2024-10-31",
      "schedule_update_dt" : "2024-11-01"
    }
  ]
}
```
- Statue Code 400 Bad Request [잘못된 요청]
```json
  {
    "error": "일정 조회에 실패했습니다."
  }
```
- Statue Code 401 Unauthorized [권한 없음]
```json
  {
    "error": "일정 조회 권한이 없습니다."
  }
```
</details>

<details>
<summary>✅ 일정 상세 조회</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
| 일정 상세 조회 | GET  |/schedules/{schedule_Id}|

#### Request Eelements
- x

#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |           설명           |
|:-----:|:-------:|:-----:|:----------------------:|
| schedule_id | Integer |   Y   |         일정 ID          |
|user_id | String  |   Y   |         사용자 ID         |
|     user_name      | String  |   Y   |         사용자 이름         |
| schedule_password | String  |   Y   |        일정 비밀번호         |
| schedule_title | String  |   Y   |         일정 제목          |
| schedule_contents | String  |   Y   |         일정 내용          |
| schedule_insert_dt | String |   Y   |   일정 작성 일자(datetime)   |
| schedule_update_dt |  String   |   Y   | 일정 최종 수정 일자 (datetime) |

#### 응답 예시
- Statue Code 200 OK [응답 성공]
```json
{
  "schedule_id" :"1",
  "user_id" : "550e8400-e29b-41d4-a716-441155770000",
  "user_name" : "작성자1",
  "schedule_password" : "12345",
  "schedule_title" : "오늘의 일정",
  "schedule_contents" : "과제 제출하기",
  "schedule_insert_dt" : "2024-10-30",
  "schedule_update_dt" : "2024-10-31"
}
```
- Statue Code 400 Bad Request [잘못된 요청]
```json
  {
    "error": "일정 조회에 실패했습니다."
  }
```
- Statue Code 401 Unauthorized [권한 없음]
```json
  {
    "error": "일정 조회 권한이 없습니다."
  }
```
</details>

<details>
<summary>✅ 일정 수정</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
|  일정 수정   | PUT  |/schedules/{schedule_Id}|

#### Request Eelements
| 파라미터  |   타입    | 필수 여부 |           설명           |
|:-----:|:-------:|:-----:|:----------------------:|
| schedule_id | Integer |   Y   |         일정 ID          |
|user_id | String  |   Y   |         사용자 ID         |
|     user_name      | String  |   Y   |         사용자 이름         |
| schedule_password | String  |   Y   |        일정 비밀번호         |
| schedule_title | String  |   Y   |         일정 제목          |
| schedule_contents | String  |   Y   |         일정 내용          |
| schedule_update_dt |  String   |   Y   | 일정 최종 수정 일자 (datetime) |

#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |           설명           |
|:-----:|:-------:|:-----:|:----------------------:|
| schedule_id | Integer |   Y   |         일정 ID          |

#### 요청 예시

```json
  {
    "schedule_id" :"1",
    "user_id" : "550e8400-e29b-41d4-a716-441155770000",
    "user_name" : "수정한 작성자",
    "schedule_password" : "55555",
    "schedule_title" : "오늘의 일정 수정",
    "schedule_contents" : "과제 제출하기 수정 완료",
    "schedule_update_dt" : "2024-11-01"
  }
```

#### 응답 예시
- Statue Code 200 OK [응답 성공]
```json
{
  "message": "일정 수정에 성공했습니다.",
  "schedule_id" :"1"
}
```
- Statue Code 400 Bad Request [잘못된 요청]
```json
  {
    "error": "일정 수정에 실패했습니다."
  }
```
- Statue Code 401 Unauthorized [권한 없음]
```json
  {
    "error": "일정 수정 권한이 없습니다."
  }
```
</details>

<details>
<summary>✅ 일정 삭제</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
|  일정 삭제   | DELETE  |/schedules/{schedule_Id}|

#### Request Eelements
| 파라미터  |   타입    | 필수 여부 |           설명           |
|:-----:|:-------:|:-----:|:----------------------:|
| schedule_id | Integer |   Y   |         일정 ID          |
|user_id | String  |   Y   |         사용자 ID         |
| schedule_password | String  |   Y   |        일정 비밀번호         |



#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |           설명           |
|:-----:|:-------:|:-----:|:----------------------:|
| schedule_id | Integer |   Y   |         일정 ID          |

#### 요청 예시

- x

#### 응답 예시
- Statue Code 200 OK [응답 성공]
```json
{
  "message": "일정 삭제에 성공했습니다.",
  "schedule_id" :"1"
}
```
- Statue Code 400 Bad Request [잘못된 요청]
```json
  {
    "error": "일정 삭제에 실패했습니다."
  }
```
- Statue Code 401 Unauthorized [권한 없음]
```json
  {
    "error": "일정 삭제 권한이 없습니다."
  }
```
</details>
<br/>

#### 👤 User
|     기능     | method |         URL          |
|:----------:|:------:|:--------------------:|
|   사용자 등록   | POST  |        /users        |
| 사용자 정보 조회  | GET  |   /users/{user_Id}   |
| 사용자 정보 수정  | PUT  | /users/{user_Id} |
|   사용자 삭제   | DELETE  | /users/{user_Id} |

<details>
<summary>✅ 사용자 등록</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
|   사용자 등록   | POST  |        /users        |

#### Request Eelements
|        파라미터        |   타입    | 필수 여부 |             설명              |
|:------------------:|:-------:|:-----:|:---------------------------:|
|     user_name      | String  |   Y   |           사용자 이름            |
|     user_email      | String  |   Y   |           사용자 이메일           |
|     user_join_dt      | String  |   Y   |           사용자 가입일           |


#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |     설명 |
|:-----:|:-------:|:-----:|:------:|
|      user_id       | String  |   Y   |           사용자 ID            |
|     user_status      | String  |   Y   | 사용자 상태 (정상 : '1', 탈퇴 : '2') |

#### 요청 예시

```json
  {
    "user_name" : "작성자 닉네임",
    "user_email" : "abcd@gmail.com",
    "user_join_dt" : "2024-10-31"
  }
```
#### 응답 예시
- Statue Code 201 Created [생성 성공]
```json
  {
    "message" : "회원 등록에 성공했습니다.",
    "user_id" : "550e8400-e29b-41d4-a716-441155770000",
    "user_status" : "1"
  }
```
- Statue Code 400 Bad Request [잘못된 요청]
```json
  {
    "error": "회원 등록에 실패했습니다."
  }
```
</details>

<details>
<summary>✅ 사용자 정보 조회</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
| 사용자 정보 조회  | GET  |   /users/{user_Id}   |

#### Request Eelements
|        파라미터        |   타입    | 필수 여부 |             설명              |
|:------------------:|:-------:|:-----:|:---------------------------:|
|      user_id       | String  |   Y   |           사용자 ID            |


#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |     설명 |
|:-----:|:-------:|:-----:|:------:|
|      user_id       | String  |   Y   |           사용자 ID            |
|     user_name      | String  |   Y   |           사용자 이름            |
|     user_email      | String  |   Y   |           사용자 이메일           |
|     user_join_dt      | String  |   Y   |           사용자 가입일           |
|     user_status      | String  |   Y   | 사용자 상태 (정상 : '1', 탈퇴 : '2') |

#### 요청 예시

- x

#### 응답 예시
- Statue Code 200 OK [응답 성공]
```json
  {
  "user_id" : "550e8400-e29b-41d4-a716-441155770000",
  "user_name" : "작성자 닉네임",
  "user_email" : "abcd@gmail.com",
  "user_join_dt" : "2024-10-31",
  "user_status" : "1"
}
```
- Statue Code 400 Bad Request [잘못된 요청]
```json
  {
    "error": "회원 조회에 실패했습니다."
  }
```
- Statue Code 401 Unauthorized [권한 없음]
```json
  {
    "error": "회원 조회 권한이 없습니다."
  }
```
</details>

<details>
<summary>✅ 사용자 정보 수정</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
| 사용자 정보 수정  | PUT  | /users/{user_Id} |

#### Request Eelements
|        파라미터        |   타입    | 필수 여부 |             설명              |
|:------------------:|:-------:|:-----:|:---------------------------:|
|     user_name      | String  |   Y   |           사용자 이름            |
|     user_email      | String  |   Y   |           사용자 이메일           |


#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |     설명 |
|:-----:|:-------:|:-----:|:------:|
|      user_id       | String  |   Y   |           사용자 ID            |

#### 요청 예시

```json
  {
    "user_name" : "작성자 닉네임 수정",
    "user_email" : "xdwe@gmail.com"
  }
```
#### 응답 예시
- Statue Code 200 OK [생성 성공]
```json
  {
    "message" : "회원 정보를 수정했습니다.",
    "user_id" : "550e8400-e29b-41d4-a716-441155770000"
  }
```
- Statue Code 400 Bad Request [잘못된 요청]
```json
  {
    "error": "회원 정보를 수정에 실패했습니다."
  }
```
- Statue Code 401 Unauthorized [권한 없음]
```json
  {
    "error": "회원 정보를 수정할 수 있는 권한이 없습니다."
  }
```
</details>

<details>
<summary>✅ 사용자 삭제</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
| 사용자 삭제  | DELETE  | /users/{user_Id} |

#### Request Eelements
|        파라미터        |   타입    | 필수 여부 |             설명              |
|:------------------:|:-------:|:-----:|:---------------------------:|
|      user_id       | String  |   Y   |           사용자 ID            |



#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |     설명 |
|:-----:|:-------:|:-----:|:------:|
|     user_status      | String  |   Y   | 사용자 상태 (정상 : '1', 탈퇴 : '2') |

#### 요청 예시

```json
  {
    "user_id" : "550e8400-e29b-41d4-a716-441155770000"
  }
```
#### 응답 예시
- Statue Code 200 OK [생성 성공]
```json
  {
    "message" : "회원 삭제를 성공했습니다.",
    "user_status" : "2"
  }
```
- Statue Code 400 Bad Request [잘못된 요청]
```json
  {
    "error": "회원 삭제를 실패했습니다."
  }
```
- Statue Code 401 Unauthorized [권한 없음]
```json
  {
    "error": "회원 삭제 권한이 없습니다."
  }
```
</details>


</details>

### ️⚙️ ERD
<details>
<summary>ERD</summary>

![SchedulePlanner - ERD](https://github.com/user-attachments/assets/340a8af7-5644-4f0b-8bb0-64c09cf3f46e)
</details>

## 🪐 주요 기능
#### **✨ Lv1 : 일정 생성 및 조회**
* 


#### **✨ Lv2 : 일정 수정 및 삭제**
* 

#### **✨ Lv3 : 연관 관계 설정**
*

* #### **✨ Lv4 : 페이지네이션**
*

* #### **✨ Lv5 : 예외 처리**
* 

* #### **✨ Lv6 : null 체크 및 특정 패턴에 대한 검증 수행**
*

## 🌟 실행 화면
