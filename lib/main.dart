import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favori Kitaplarım',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        accentColor: Colors.grey,

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Favori Kitaplarım'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
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
