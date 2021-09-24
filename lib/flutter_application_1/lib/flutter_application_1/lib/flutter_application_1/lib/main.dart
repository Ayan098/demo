import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  var backgroundColor;

  var buildpage;

  @override
  Widget build(BuildContext context) {
    var scaffold7 = Scaffold(
        appBar: AppBar(
          title: Text('Blog'),
          centerTitle: true,
          ),
          drawer: Drawer(
            child:ListView(

  padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text('Drawer Header'),
      ),
    ListTile(
        title: const Text('Item 1'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
),
),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none),
              splashColor: Colors.blue,
              tooltip: 'notification',
              onPressed: () {},
            ),
            IconButton(
                icon: Icon(Icons.search),
                splashColor: Colors.brown,
                onPressed: () {})
          ],

          //backgroundColor: Colors.orange,

          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.pink, Colors.red],
                    begin: Alignment.topRight,
                    end: Alignment.topLeft)),
          ),
          body: TabBar(
            indicatorColor: Colors.amber,
            indicatorWeight: 4,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.feed), text: "Feed"),
              Tab(icon: Icon(Icons.face), text: "Profile"),
              Tab(icon: Icon(Icons.settings), text: "settings"),
            ],
          ),

          elevation: 30,
          titleSpacing: 30,
        );
    var scaffold6 = scaffold7;
    var scaffold5 = scaffold6;
    var scaffold4 = scaffold5;
    var scaffold3 = scaffold4;
    var scaffold2 = scaffold3;
    var scaffold = scaffold2;
    var defaultTabController = DefaultTabController(
      length: 4,
      child: scaffold,
      );
    return defaultTabController;
  
  }
}

Widget buildPage(String text) {
  var center = Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 30),
    ),
  );
  return center;
}
