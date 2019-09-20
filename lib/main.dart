import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.donut_large),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 60.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/profilepic.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(25.0)),
                    ),
                    Positioned(
                      left: 5.0,
                      top: 40.0,
                      child: Container(
                        height: 15.0,
                        width: 15.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.5),
                            color: Colors.green,
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 1.0)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Where',
                  style: TextStyle(
                    fontFamily: 'Opensans',
                    fontSize: 50.0,
                    color: Color(0xFFFD6F4F),
                  ),
                ),
                Text(
                  'Will you go',
                  style: TextStyle(
                    fontFamily: 'Opensans',
                    fontSize: 50.0,
                  ),
                ),
                Text(
                  'today',
                  style: TextStyle(
                    fontFamily: 'Opensans',
                    fontSize: 50.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xFFF9F9F9),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                    hintText: 'What would you like to discover?',
                    hintStyle: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 15.0,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
