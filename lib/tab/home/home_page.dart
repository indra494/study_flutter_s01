import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram clone'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height:20),
              const Text('Instagram에 오신 것을 환영합니다.',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height:20),
              const Text('사진과 동영상을 보려면 팔로우하세요.'),
              const SizedBox(height:20),
              Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        width: 80,
                        height: 80,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2023/03/23/8733be6a-f9a7-4ba8-a5bf-6ecfe60d63af.jpg'),
                        ),
                      ),
                      const SizedBox(height:8),
                      const Text('indra494@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text('닉네임'),
                      const SizedBox(height:8),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network('https://thumb.mt.co.kr/06/2019/11/2019111312544857738_1.jpg/dims/optimize/',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover
                          ),
                          const SizedBox(width:4),
                          Image.network('https://cdn.trendbiz.co.kr/news/photo/202308/11994_19859_1116.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover
                          ),
                          const SizedBox(width:4),
                          Image.network('https://thumb.mt.co.kr/06/2019/11/2019111312544857738_1.jpg/dims/optimize/',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover
                          ),
                        ],
                      ),
                      const SizedBox(height:8),
                      const Text('Facebook 친구'),
                      ElevatedButton(
                          onPressed: () {

                          },
                          child: const Text('팔로우'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }



}