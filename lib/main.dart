import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favori Kitaplarım',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        accentColor: Colors.grey,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Favori Kitaplarım'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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

        title: Text(widget.title),
      ),
      body: Center(
          child:
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children : <Widget>[
                        Container(
                            width: 100,
                            height: 100,
                            color: Colors.brown,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FadeInImage.assetNetwork(placeholder: "assets/images/loading.gif", image: "https://img-s1.onedio.com/id-557f06d9123f05c963d0d913/rev-0/w-900/h-621/f-jpg/s-e7fbe6eb9e2515a077cd528d0431132438f988ba.jpg"),
                                ]
                            )
                        ),
                        Container(
                          child:
                          Text("BABY TEACHER KADRİYE" ,
                            style: TextStyle(fontStyle: FontStyle.italic,
                            color: Colors.red,
                            ),
                          ),
                        )
                  ],
              ),

                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children : <Widget>[
                        Container(
                            width: 100,
                            height: 100,
                            color: Colors.brown,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FadeInImage.assetNetwork(placeholder: "assets/images/loading.gif", image: "https://i.pinimg.com/200x150/25/15/02/251502f71ca0bee47e2c7ff32c0fb377.jpg"),
                                ]
                            )
                        ),
                      ],
                    ),
              Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children : <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.brown,
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FadeInImage.assetNetwork(placeholder: "assets/images/loading.gif", image: "https://kutluyayinevi.com/wp-content/uploads/2016/04/kitaplar.jpg"),
                            ],
                        ),
                    ),
                    ],
              ),
            ]
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'TIKLA BANA',
        child: Icon(Icons.accessibility_new,
        ),
      ),
    );
  }
}
