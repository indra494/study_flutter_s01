import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/post.dart';

class AccountModel {

  final Stream<QuerySnapshot<Post>> postsStream = FirebaseFirestore.instance
      .collection('posts')
      .where('userId',isEqualTo: FirebaseAuth.instance.currentUser?.uid)
      .withConverter<Post>(
    fromFirestore: (snapshot, _) => Post.fromJson(snapshot.data()!),
    toFirestore: (post, _) => post.toJson(),
  ).snapshots();

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