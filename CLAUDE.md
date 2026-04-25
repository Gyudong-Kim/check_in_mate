# Check In Mate - Project Documentation

## 프로젝트 개요

**Check In Mate**는 GPS 기반 회사 위치 등록, 출퇴근 시간 설정, 범위 기반 알림을 제공하는 Flutter 모바일 앱입니다.

### 핵심 기능
- 회사 위치 등록 및 관리
- 출퇴근 시간 등록 및 관리
- GPS 범위 기반 출퇴근 알림
- 출퇴근 시스템 URL 연동

## 기술 스택

### 프레임워크 & 라이브러리
- **Framework**: Flutter 3.41.7
- **Dart**: 3.11.5
- **VCS**: FVM (Flutter Version Manager)
- **State Management**: GetX 4.6.5+
- **Routing**: GoRouter 14.8.1+
- **DI (Dependency Injection)**: GetIt 7.7.0+
- **Local Storage**: Hive 2.2.3+ (싱글톤 패턴)
- **Error Handling**: Custom Result<T> (dartz 미사용)
- **Logging**: logger 2.4.0+
- **Location**: geolocator 13.0.0+
- **Notifications**: flutter_local_notifications 17.2.0+
- **URL Launcher**: url_launcher 6.3.0+
- **Utilities**: uuid 4.4.0+, intl 0.19.0+

### 아키텍처
- **패턴**: Clean Architecture
- **폴더 구조**: Feature-based structure + Core layer
- **에러 처리**: 커스텀 Result<T> 패턴 (sealed class)
- **레이어 분리**:
  - **Core**: 재사용 가능한 기본 모듈 (DI, Theme, Logger, Permissions, Error handling, Storage)
  - **Features**: 기능별 모듈 (Domain → Data → Presentation)
  - **Services**: 비즈니스 로직 서비스 (Location, Notification, URL Launcher)
  - **Config**: 앱 설정 (Routing, Constants)

### 스타일 및 테마
- **스타일 정의**: ThemeData + Custom TextStyle 패턴
- **색상 관리**: `app_colors.dart`
- **폰트 관리**: `app_fonts.dart`
- **테마**: Material 3 기반

### 린팅 & 포매팅
- **Linter**: flutter_lints 3.0.0+
- **Formatter**: dart format (자동)

## 프로젝트 구조

```
lib/
├── core/                                 # 재사용 가능한 기본 모듈
│   ├── di/
│   │   └── service_locator.dart          # GetIt 중앙집중식 DI 관리
│   ├── data_sources/
│   │   └── hive.dart                     # HiveStorage 싱글톤 (로컬 저장소)
│   ├── errors/
│   │   ├── app_exception.dart            # sealed class 예외 정의
│   │   └── result.dart                   # sealed class Result<T> 패턴
│   ├── logger/
│   │   └── app_logger.dart               # logger 패키지 래핑
│   ├── permissions/
│   │   └── permission_handler.dart       # 위치 권한 처리 (geolocator)
│   └── theme/
│       ├── app_colors.dart               # 색상 토큰 (다크 테마)
│       ├── app_fonts.dart                # Typography (Pretendard)
│       └── app_theme.dart                # Material 3 ThemeData
│
├── features/
│   └── company/                          # 회사 위치 등록 및 관리
│       ├── data/
│       │   ├── datasources/              # (구조 예정)
│       │   ├── models/
│       │   └── repositories/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/
│       │   └── usecases/
│       └── presentation/
│           ├── controllers/              # GetxController
│           ├── pages/
│           └── widgets/
│
├── services/                             # 비즈니스 로직 서비스
│   ├── location_service.dart             # GPS & Geofencing (geolocator)
│   ├── notification_service.dart         # 푸시 알림 (flutter_local_notifications)
│   └── url_launcher_service.dart         # URL 연동 (url_launcher)
│
├── config/
│   └── routes/                           # (구조 예정)
│       └── app_routes.dart               # GoRouter 설정
│
├── assets/
│   ├── images/
│   └── fonts/
│       ├── Pretendard-Regular.otf
│       ├── Pretendard-SemiBold.otf
│       └── Pretendard-Bold.otf
│
└── main.dart                             # 앱 진입점
```

## 구현 현황
- **✅ Core Layer**: 완성 (DI, Theme, Errors, Logger, Permissions, Storage)
- **🔄 Features**: 구조 설계 단계 (Domain/Data/Presentation 뼈대)
- **⏳ Services**: 구조 설계 단계
- **⏳ Routing**: 구조 설계 단계

## 개발 규칙

### 코딩 스타일
- Dart Effective Dart 가이드 준수
- flutter_lints 규칙 따르기
- 변수명: camelCase (private는 _prefix)
- 클래스명: PascalCase
- 파일명: snake_case

### Git 커밋 규칙
```
[Chore] 프로젝트 구조 및 설정
[Feature] 새 기능 추가
[Fix] 버그 수정
[Refactor] 코드 리팩토링
[Docs] 문서 작성
[test] 테스트 작성 또는 수정
[Style] 코드 포매팅 (기능 변화 없음)
[Design] UI/UX 디자인 변경
```

### 상태관리 패턴
- `GetxController` 기반의 반응형 상태관리
- `.obs`로 선언된 변수 자동 리빌드
- `Obx()` 또는 `GetBuilder()` 래핑으로 UI 업데이트
- DI는 `GetIt`을 통한 service_locator.dart에서 관리

### 에러 처리
- Domain layer: `Either<Failure, T>` 패턴 사용 (dartz)
- Data layer: Exception을 Failure로 변환
- Presentation layer: Failure에 따른 UI 업데이트

### 로깅
- `logger` 패키지 사용
- 중요 이벤트는 `info` 레벨
- 디버깅: `debug` 레벨
- 에러: `error` 레벨

## 배포 전 체크리스트

- [ ] 모든 권한 설정 완료 (Android Manifest, iOS Info.plist)
- [ ] Hive 어댑터 생성 (build_runner 실행)
- [ ] 환경변수 설정 (.env)
- [ ] 위치 서비스 백그라운드 권한 설정
- [ ] 푸시 알림 설정 (Firebase 등)
- [ ] 앱 서명 설정
- [ ] 테스트 완료
