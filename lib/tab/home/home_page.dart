import 'package:flutter/material.dart';
import 'package:study_flutter_s01/tab/home/home_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final model = HomeModel();

    return Scaffold(
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height:20),
            const Text('Indragram에 오신 것을 환영합니다.',
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
                    SizedBox(
                      width: 80,
                      height: 80,
                        child: GestureDetector(
                          onTap: () async {
                            await model.updateProfileImage();
                            setState(() {});
                          },
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(model.getProfileImageUrl()),
                          ),
                        )
                    ),
                    const SizedBox(height:8),
                    Text(model.getEmail(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(model.getNickName()),
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