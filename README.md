# study start
1. version 
- project > android > gradle > wrapper > gradle-wrapper.properties 
  - gradle-8.1-all.zip
- open jdk 20 
- 문제 시 다시 module import(gradle프로젝트로)

2. study 정리
- dart 스터디
- flutter 기본 구조
- flutter 위젯 활용
- flutter firebase 활용 (firebase cli)

3. reference site
- flutter 공식사이트 : https://flutter.dev
- flutter 위젯 확인 : https://flutterstudio.app
- material ui 설명 : https://material.io
- dart null-safety : https://dart.dev/null-safety
- dart lint : https://dart-lang.github.io/linter/lints
- lib search : https://pub.dev
- firebase : https://firebase.google.com/?hl=ko
- FlutterFire : http://firebase.flutter.dev

4. dart study
- /dart_study 참고

5. image picker 라이브러리 설치
- pubspec.yaml dependency : image_picker: ^0.8.6 추가
- pubspec.yaml -> flutter pub get 수행
- or 아래방법을 수행
- 터미널에서 "flutter pub add image_picker" 명령어 수행

6. 아이폰에서 image picker 사용하기 위한 권한 설정
- ios > Runner > Info.plist 파일에서 아래 내용 추가
  - <key>NSPhotoLibraryUsageDescription</key>
  - <string>사진 선택에 갤러리를 활용합니다.</string>
  - <key>NSCameraUsageDescription</key>
  - <string>사진 선택에 카메라를 활용합니다.</string>
  - <key>NSMicrophoneUsageDescription</key>
  - <string>비디오를 촬영하여 활용합니다.</string>
  - <key>CFBundleDevelopmentRegion</key>

7. firebase 필수 lib 추가 (firebase_options.dart)
- flutter pub add firebase_core 명령어 실행하면 firebase_options.dart 파일에 자동으로 dependency가 추가된다.
- flutter pub add firebase_auth
- flutter pub add flutterfire_ui

8. project ':sign_in_with_apple' -> org.jetbrains.kotlin: 오류 시 아래의 방법으로 해결.
- /Users/indra/.pub-cache/hosted/pub.dev/sign_in_with_apple-3.3.0/android/build.gradle 아래와 같이 수정
  - ext.kotlin_version = '1.3.50' -> ext.kotlin_version = '1.7.10'

# study_flutter_s01
study flutter

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
