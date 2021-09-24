import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var title;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: title),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Raleway {}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);
  final title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.all(32.0),
              child: Text(
                "BOTION!",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.message),
                  suffixIcon: Icon(Icons.send),
                  labelText: "Robot's Name",
                ),
                onSubmitted: (name) {
                  // ignore: non_constant_identifier_names
                  showDialog(
                      context: context,
                      // ignore: non_constant_identifier_names
                      builder: (BuildContext Context) {
                        return Image.network("https://robohash.org/$name");
                      });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
