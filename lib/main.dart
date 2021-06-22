import 'package:flutter/material.dart';

import 'article.dart';
import 'article_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMNLP DEMO',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        title: Text(
          'EMNLP DEMO',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: 'Roboto'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.65,
            child: ListView(
              addAutomaticKeepAlives: true,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                  child: Text(
                    'Try it!',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 40),
                  ),
                ),
                ArticleField(),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                  child: Text(
                    'Example',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 40),
                  ),
                ),
                Article(
                    title:
                        'INTERACTIVE Here are the executive actions Biden signed in his first daydddddddds ',
                    content:
                        'Biden was reelected to the Senate six times, and was the fourth-most senior senator when he became Obama`s vice president after they won the 2008 presidential election, defeating John McCain and his running mate Sarah Palin.'),
                Article(
                    title:
                        'INTERACTIVE Here are the executive actions Biden signed in his first 100 ddddddds ',
                    content:
                        'Biden was reelected to the Senate six times, and was the fourth-most senior senator when he became Obama`s vice president after they won the 2008 presidential election, defeating John McCain and his running mate Sarah Palin.'),
                Article(
                    title:
                        'INTERACTIVE Here are the executive actions Biden signed in his first 100 dayddddds ',
                    content:
                        'Biden was reelected to the Senate six times, and was the fourth-most senior senator when he became Obama`s vice president after they won the 2008 presidential election, defeating John McCain and his running mate Sarah Palin.'),
                Article(
                    title:
                        'INTERACTIVE Here are the executive actions Biden signed in his first 100 daydddddds ',
                    content:
                        'Biden was reelected to the Senate six times, and was the fourth-most senior senator when he became Obama`s vice president after they won the 2008 presidential election, defeating John McCain and his running mate Sarah Palin.'),
                Article(
                    title:
                        'INTERACTIVE Here are the executive actions Biden signed in his first 100 dayddddddds ',
                    content:
                        'Biden was reelected to the Senate six times, and was the fourth-most senior senator when he became Obama`s vice president after they won the 2008 presidential election, defeating John McCain and his running mate Sarah Palin.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
