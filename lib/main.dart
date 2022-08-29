import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: '编码牛仔的APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _text = '还没点哦!';

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      _counter++;
      _text = '点击了' + _counter.toString() + '次!';
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title, textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        margin: const EdgeInsets.all(2.0),
        alignment: Alignment.center,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: 0.7),
          children: <Widget>[
            new Container(
              color: Colors.lightBlue,
              alignment: Alignment.center,
              child: Text(
                _text,
                style: TextStyle(
                  color: Color.fromARGB(255, 250, 231, 231),
                  fontSize: 16.0,
                ),
              ),
            ),
            new Container(
                color: Colors.deepPurpleAccent,
                alignment: Alignment.center,
                child: FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add_alert),
                )),
            new Container(
                child: new Image.network(
              'http://img5.mtime.cn/mt/2022/08/24/100448.14169576_1280X720X2.jpg',
              fit: BoxFit.cover,
            )),
            new Container(
              child: new Image.network(
                'https://iknow-pic.cdn.bcebos.com/8c1001e93901213f8d6a4d4d46e736d12e2e95c1?x-bce-process=image%2Fresize%2Cm_lfit%2Cw_600%2Ch_800%2Climit_1%2Fquality%2Cq_85%2Fformat%2Cf_auto',
                fit: BoxFit.cover,
              ),
            ),
            new Container(
              child: new Image.network(
                'http://img5.mtime.cn/mt/2022/07/23/131612.22763517_1280X720X2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            new Container(
              child: new Image.network(
                'http://img5.mtime.cn/mt/2022/07/25/124605.11163764_1280X720X2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            new Container(
              child: new Image.network(
                'http://img5.mtime.cn/mt/2022/08/08/165700.18865463_1280X720X2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
