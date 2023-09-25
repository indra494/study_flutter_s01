import 'package:firebase_auth/firebase_auth.dart';

class DetailModel {

  String getEmail() {
    return FirebaseAuth.instance.currentUser?.email ?? '메일없음';
  }

  String getNickName() {
    return FirebaseAuth.instance.currentUser?.displayName ?? '이름없음';
  }

  String getProfileImageUrl() {
    return FirebaseAuth.instance.currentUser?.photoURL ?? 'https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2023/03/23/8733be6a-f9a7-4ba8-a5bf-6ecfe60d63af.jpg';
  }

}