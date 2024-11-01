
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
| 일정 상세 조회 | GET  |/schedules/{Id}|
|  일정 수정   | PUT  |/schedules/{Id}|
|  일정 삭제   | DELETE  |/schedules/{Id}|

<details>
<summary>✅ 일정 생성</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
| 일정 생성 | POST  |/schedules|

#### Request Eelements
|        파라미터        |   타입    | 필수 여부 |           설명           |
|:------------------:|:-------:|:-----:|:----------------------:|
| id | Integer |   Y   |         일정 ID          |
|user_id | String  |   Y   |         사용자 ID         |
|     name      | String  |   Y   |         사용자 이름         |
| password | String  |   Y   |        일정 비밀번호         |
| title | String  |   Y   |         일정 제목          |
| contents | String  |   Y   |         일정 내용          |
| created_at | String |   Y   |   일정 작성 일자(datetime)   |
| updated_at |  String   |   Y   | 일정 최종 수정 일자 (datetime) |

#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |     설명 |
|:-----:|:-------:|:-----:|:------:|
| id | Integer |   Y   |         일정 ID          |

#### 요청 예시

```json
  {
    "user_id" : "550e8400-e29b-41d4-a716-441155770000",
    "name" : "작성자1",
    "password" : "12345",
    "title" : "오늘의 일정",
    "contents" : "과제 제출하기",
    "created_at" : "2024-10-30",
    "updated_at" : "2024-10-31"
  }
```
#### 응답 예시
- Statue Code 201 Created [생성 성공]
```json
  {
    "message" : "일정 생성에 성공했습니다.",
    "id" :"1"
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
| id | Integer |   Y   |         일정 ID          |
|user_id | String  |   Y   |         사용자 ID         |
|     name      | String  |   Y   |         사용자 이름         |
| password | String  |   Y   |        일정 비밀번호         |
| title | String  |   Y   |         일정 제목          |
| contents | String  |   Y   |         일정 내용          |
| created_at | String |   Y   |   일정 작성 일자(datetime)   |
| updated_at |  String   |   Y   | 일정 최종 수정 일자 (datetime) |

#### 응답 예시
- Statue Code 200 OK [응답 성공]
```json
{
  "page": 1,
  "list_size": 10,
  "data": [
    {
      "id" :"1",
      "user_id" : "550e8400-e29b-41d4-a716-441155770000",
      "name" : "작성자1",
      "password" : "12345",
      "title" : "오늘의 일정",
      "contents" : "과제 제출하기",
      "created_at" : "2024-10-30",
      "updated_at" : "2024-10-31"
    },
    {
      "id" :"2",
      "user_id" : "450e8400-a29b-41d4-a726-441166330000",
      "name" : "작성자2",
      "password" : "5456a",
      "title" : "운동 하기",
      "contents" : "웨이트 1시간, 유산소 30분",
      "created_at" : "2024-10-31",
      "updated_at" : "2024-11-01"
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
| 일정 상세 조회 | GET  |/schedules/{id}|

#### Request Eelements
- x

#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |           설명           |
|:-----:|:-------:|:-----:|:----------------------:|
| id | Integer |   Y   |         일정 ID          |
|user_id | String  |   Y   |         사용자 ID         |
|     name      | String  |   Y   |         사용자 이름         |
| password | String  |   Y   |        일정 비밀번호         |
| title | String  |   Y   |         일정 제목          |
| contents | String  |   Y   |         일정 내용          |
| created_at | String |   Y   |   일정 작성 일자(datetime)   |
| updated_at |  String   |   Y   | 일정 최종 수정 일자 (datetime) |

#### 응답 예시
- Statue Code 200 OK [응답 성공]
```json
{
  "id" :"1",
  "user_id" : "550e8400-e29b-41d4-a716-441155770000",
  "name" : "작성자1",
  "password" : "12345",
  "title" : "오늘의 일정",
  "contents" : "과제 제출하기",
  "created_at" : "2024-10-30",
  "updated_at" : "2024-10-31"
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
|  일정 수정   | PUT  |/schedules/{id}|

#### Request Eelements
| 파라미터  |   타입    | 필수 여부 |           설명           |
|:-----:|:-------:|:-----:|:----------------------:|
| id | Integer |   Y   |         일정 ID          |
|user_id | String  |   Y   |         사용자 ID         |
|     name      | String  |   Y   |         사용자 이름         |
| password | String  |   Y   |        일정 비밀번호         |
| title | String  |   Y   |         일정 제목          |
| contents | String  |   Y   |         일정 내용          |
| updated_at |  String   |   Y   | 일정 최종 수정 일자 (datetime) |

#### Respons Eelements

- x

#### 요청 예시

```json
  {
    "id" :"1",
    "user_id" : "550e8400-e29b-41d4-a716-441155770000",
    "name" : "수정한 작성자",
    "password" : "55555",
    "title" : "오늘의 일정 수정",
    "contents" : "과제 제출하기 수정 완료",
    "updated_at" : "2024-11-01"
  }
```

#### 응답 예시
- Statue Code 200 OK [응답 성공]
```json
{
  "message": "일정 수정에 성공했습니다."
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
|  일정 삭제   | DELETE  |/schedules/{id}|

#### Request Eelements
| 파라미터  |   타입    | 필수 여부 |           설명           |
|:-----:|:-------:|:-----:|:----------------------:|
| id | Integer |   Y   |         일정 ID          |
|user_id | String  |   Y   |         사용자 ID         |
| password | String  |   Y   |        일정 비밀번호         |



#### Respons Eelements

- x

#### 요청 예시

- x

#### 응답 예시
- Statue Code 200 OK [응답 성공]
```json
{
  "message": "일정 삭제에 성공했습니다."
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
| 사용자 정보 조회  | GET  |   /users/{Id}   |
| 사용자 정보 수정  | PUT  | /users/{Id} |
|   사용자 삭제   | DELETE  | /users/{Id} |

<details>
<summary>✅ 사용자 등록</summary>

|  기능  | method |URL|
|:----:|:------:|:---:|
|   사용자 등록   | POST  |        /users        |

#### Request Eelements
|        파라미터        |   타입    | 필수 여부 |           설명            |
|:------------------:|:-------:|:-----:|:-----------------------:|
|     name      | String  |   Y   |         사용자 이름          |
|     email      | String  |   Y   |         사용자 이메일         |
|     created_at      | String  |   Y   |         사용자 가입일(datetime)         |
|     updated_at      | String  |   Y   | 사용자 정보 최종 수정일(datetime) |


#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |     설명 |
|:-----:|:-------:|:-----:|:------:|
|      id       | String  |   Y   |           사용자 ID            |
|     status      | String  |   Y   | 사용자 상태 (정상 : '1', 탈퇴 : '2') |

#### 요청 예시

```json
  {
  "name": "작성자 닉네임",
  "email": "abcd@gmail.com",
  "created_at": "2024-10-31",
  "updated_at": "2024-10-31"
}
```
#### 응답 예시
- Statue Code 201 Created [생성 성공]
```json
  {
    "message" : "회원 등록에 성공했습니다.",
    "id" : "550e8400-e29b-41d4-a716-441155770000",
    "status" : "1"
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
| 사용자 정보 조회  | GET  |   /users/{id}   |

#### Request Eelements
|        파라미터        |   타입    | 필수 여부 |             설명              |
|:------------------:|:-------:|:-----:|:---------------------------:|
|      id       | String  |   Y   |           사용자 ID            |


#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |     설명 |
|:-----:|:-------:|:-----:|:------:|
|      id       | String  |   Y   |           사용자 ID            |
|     name      | String  |   Y   |           사용자 이름            |
|     email      | String  |   Y   |           사용자 이메일           |
|     created_at      | String  |   Y   |           사용자 가입일(datetime)           |
|     updated_at      | String  |   Y   | 사용자 정보 최종 수정일(datetime) |
|     status      | String  |   Y   | 사용자 상태 (정상 : '1', 탈퇴 : '2') |

#### 요청 예시

- x

#### 응답 예시
- Statue Code 200 OK [응답 성공]
```json
  {
  "id" : "550e8400-e29b-41d4-a716-441155770000",
  "name" : "작성자 닉네임",
  "email" : "abcd@gmail.com",
  "created_at" : "2024-10-31",
  "updated_at" : "2024-10-31",
  "status" : "1"
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
| 사용자 정보 수정  | PUT  | /users/{id} |

#### Request Eelements
|        파라미터        |   타입    | 필수 여부 |             설명              |
|:------------------:|:-------:|:-----:|:---------------------------:|
|      id       | String  |   Y   |           사용자 ID            |
|     name      | String  |   Y   |           사용자 이름            |
|     email      | String  |   Y   |           사용자 이메일           |


#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |     설명 |
|:-----:|:-------:|:-----:|:------:|
|     updated_at      | String  |   Y   | 사용자 정보 최종 수정일(datetime) |

#### 요청 예시

```json
  {
  "id": "550e8400-e29b-41d4-a716-441155770000",
  "name": "작성자 닉네임 수정",
  "email": "xdwe@gmail.com"
}
```
#### 응답 예시
- Statue Code 200 OK [생성 성공]
```json
  {
  "message": "회원 정보를 수정했습니다.",
  "updated_at": "2024-11-01"
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
| 사용자 삭제  | DELETE  | /users/{id} |

#### Request Eelements
|        파라미터        |   타입    | 필수 여부 |             설명              |
|:------------------:|:-------:|:-----:|:---------------------------:|
|      id       | String  |   Y   |           사용자 ID            |



#### Respons Eelements
| 파라미터  |   타입    | 필수 여부 |     설명 |
|:-----:|:-------:|:-----:|:------:|
|     status      | String  |   Y   | 사용자 상태 (정상 : '1', 탈퇴 : '2') |

#### 요청 예시

```json
  {
    "id" : "550e8400-e29b-41d4-a716-441155770000"
  }
```
#### 응답 예시
- Statue Code 200 OK [생성 성공]
```json
  {
    "message" : "회원 삭제를 성공했습니다.",
    "status" : "2"
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

![SchedulePlanner - ERD 최종](https://github.com/user-attachments/assets/1e3697da-7520-484f-96f5-083c3a86801f)
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
