import 'dart:io';

import 'package:flutter/material.dart';
import 'package:study_flutter_s01/tab/create/create_model.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final model = CreateModel();

  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물'),
        actions: [
          IconButton(
            onPressed: () {

            },
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
                    onPressed: () async {
                      _image = await model.getImage();

                      setState(() {});
                    },
                    child: const Text('이미지 선택')
                ),
                if( _image != null) Image.file(
                  _image!,
                  width: 300,
                ),
            ],
          ),
        )
      )
    );
  }
}