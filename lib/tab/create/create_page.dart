import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
          ),
        ]
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: '제목을 입력하세요',
                  fillColor: Colors.white70),
                ),
                const SizedBox(height: 20),
                /*
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Placeholder(),
                ),
                */
                ElevatedButton(
                    onPressed: () {},
                    child: const Text('이미지 선택')
                ),
                Image.network('https://thumb.mt.co.kr/06/2019/11/2019111312544857738_1.jpg/dims/optimize/',
                  width: 300,
                ),
            ],
          ),
        )
      )
    );
  }

}