import 'package:emnlp_demo/article_detail.dart';
import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  final String title;
  final String content;
  const Article({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ArticleDetail(widget.title, widget.content)));
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200 / 3 * 4,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        border: Border.all(color: Colors.black)),
                  ),
                  VerticalDivider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(),
                      Container(
                        width:
                            MediaQuery.of(context).size.width * 0.65 - 300 - 20,
                        child: Text(
                          widget.title,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto'),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: true,
                        ),
                      ),
                      Divider(),
                      Divider(),
                      Container(
                        width:
                            MediaQuery.of(context).size.width * 0.65 - 300 - 20,
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.content,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto'),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Divider(
                color: Colors.transparent,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 6))
                ]),
                child: Divider(
                  color: Colors.grey,
                  height: 5,
                  thickness: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
