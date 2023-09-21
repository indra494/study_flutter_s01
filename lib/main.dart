import 'package:flutter/material.dart';
import 'cupertino_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HelloPage('Hello World')
        //home: CupertinoPage()
    );
  }
}

class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title) : super();

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'Hello World';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        floatingActionButton:
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => _changeMessage()),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_message, style: const TextStyle(fontSize: 30)),
                Text('$_counter', style: const TextStyle(fontSize: 30)),
                ElevatedButton(
                  child: Text('화면 이동'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CupertinoPage())
                    );
                  }
                )
              ],
            )
          )
    );
  }

  void _changeMessage() {
    setState(() {
      _message = '헬로 월드';
      _counter++;
    });
  }

}





