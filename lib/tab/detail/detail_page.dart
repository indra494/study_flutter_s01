import 'package:flutter/material.dart';

import '../../domain/post.dart';
import 'detail_model.dart';

class DetailPost extends StatelessWidget {
  final Post post;
  const DetailPost({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = DetailModel();

    return Scaffold(
      appBar: AppBar(
        title: const Text('둘러보기'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(model.getProfileImageUrl()),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.getEmail(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(model.getNickName()),
                  ],
                )
              ],
            ),
          ),
          Hero(
            tag: post.id,
            child: Image.network(post.imageUrl,fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(post.title),
          )
        ],
      )
    );
  }



}