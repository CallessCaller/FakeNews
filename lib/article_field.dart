import 'package:flutter/material.dart';

import 'article_detail_no_image.dart';

class ArticleField extends StatefulWidget {
  const ArticleField({Key? key}) : super(key: key);

  @override
  _ArticleFieldState createState() => _ArticleFieldState();
}

class _ArticleFieldState extends State<ArticleField> {
  var titleController = TextEditingController(text: '');
  var contentController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            children: [
              Container(
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      color: Colors.grey[400],
                    ),
                  ),
                  controller: titleController,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Roboto',
                    color: Colors.grey[850],
                  ),
                ),
              ),
              Container(
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  maxLines: 20,
                  decoration: InputDecoration(
                    labelText: 'Content',
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      color: Colors.grey[400],
                    ),
                  ),
                  controller: contentController,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Roboto',
                    color: Colors.grey[850],
                  ),
                ),
              ),
            ],
          ),
        ),
        // ignore: deprecated_member_use
        RaisedButton(
          disabledColor: Colors.grey[300],
          elevation: 7,
          color: Colors.grey[200],
          onPressed: titleController.text == '' || contentController.text == ''
              ? null
              : () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ArticleDetailNoImage(
                              titleController.text.trim(),
                              contentController.text.trim())));
                },
          child: Text(
            'Go',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
              color: titleController.text == '' || contentController.text == ''
                  ? Colors.grey[500]
                  : Colors.grey[850],
            ),
          ),
        )
      ],
    );
  }
}
