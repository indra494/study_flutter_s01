import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../domain/post.dart';
import '../create/create_page.dart';
import '../detail/detail_page.dart';
import 'search_model.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  final List<String> _urls = const [
    'https://thumb.mt.co.kr/06/2019/11/2019111312544857738_1.jpg/dims/optimize/',
    'https://cdn.trendbiz.co.kr/news/photo/202308/11994_19859_1116.png',
    'https://thumb.mt.co.kr/06/2019/11/2019111312544857738_1.jpg/dims/optimize/',
    'https://cdn.trendbiz.co.kr/news/photo/202308/11994_19859_1116.png',
  ];

  @override
  Widget build(BuildContext context) {
    final model = SearchModel();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreatePage()),
          );
        },
        child: const Icon(Icons.create),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              scale: 1.5,
            ),
            const SizedBox(width:10),
            const Text('Indragram',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: StreamBuilder<QuerySnapshot<Post>>(
          stream: model.postsStream,
          builder: (context, snapshot) {
            if(snapshot.hasError) {
              return const Text('알수 없는 에러');
            }

            if(snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            List<Post> posts = snapshot.data!.docs.map((e) => e.data()).toList();

            return GridView.builder(
                itemCount: posts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final post = posts[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailPost(post: post)),
                      );
                    },
                    child: Hero(
                      tag: post.id,
                      child: Image.network(
                          post.imageUrl,
                          fit: BoxFit.cover
                      ),
                    ),
                  );
                });
          }
        ),
      ),
    );
  }

}