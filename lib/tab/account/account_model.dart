import 'package:firebase_auth/firebase_auth.dart';

class AccountModel {
  void logout() async {
    await FirebaseAuth.instance.signOut();
  }

  String getNickName() {
    return FirebaseAuth.instance.currentUser?.displayName ?? '이름없음';
  }

  String getProfileImageUrl() {
    return FirebaseAuth.instance.currentUser?.photoURL ?? 'https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2023/03/23/8733be6a-f9a7-4ba8-a5bf-6ecfe60d63af.jpg';
  }
}