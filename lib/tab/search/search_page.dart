import 'package:flutter/material.dart';

import '../create/create_page.dart';

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
        title: const Text('Instagram clone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
            itemCount: _urls.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              final url = _urls[index];
              return Image.network(url,
                fit: BoxFit.cover
              );
            }),
      ),
    );
  }

}