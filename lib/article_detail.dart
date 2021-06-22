import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class ArticleDetail extends StatefulWidget {
  final String title;
  final String content;
  const ArticleDetail(this.title, this.content, {Key? key}) : super(key: key);

  @override
  _ArticleDetailState createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  Map<String, double> dataMap = {
    "Fake": 3,
    "Real": 7,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        title: Text(
          'ENMLP DEMO',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: 'Roboto'),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: Column(
                  children: [
                    Divider(
                      height: 30,
                      color: Colors.transparent,
                    ),
                    Text(
                      widget.title,
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.grey[850],
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 30),
                    ),
                    Divider(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Divider(
                              //   height: 25,
                              //   color: Colors.transparent,
                              // ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width *
                                    0.4 /
                                    4 *
                                    3,
                                color: Colors.brown,
                              ),
                              Divider(
                                height: 25,
                                color: Colors.transparent,
                              ),
                              Text(widget.content,
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.grey[850],
                                      fontFamily: 'Roboto',
                                      fontSize: 20)),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.65,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        child: FloatingActionButton(
                                          heroTag: 'btn4',
                                          child: Text(
                                            'L',
                                            style: TextStyle(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto'),
                                          ),
                                          onPressed: null,
                                          backgroundColor: Colors.cyan[200],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.transparent,
                                      ),
                                      Text(
                                        '10%',
                                        style: TextStyle(
                                            color: Colors.grey[850],
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Roboto'),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        child: FloatingActionButton(
                                          heroTag: 'btn5',
                                          child: Text(
                                            'C',
                                            style: TextStyle(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto'),
                                          ),
                                          onPressed: null,
                                          backgroundColor: Colors.cyan[400],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.transparent,
                                      ),
                                      Text(
                                        '15%',
                                        style: TextStyle(
                                            color: Colors.grey[850],
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Roboto'),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        child: FloatingActionButton(
                                          heroTag: 'btn6',
                                          child: Text(
                                            'R',
                                            style: TextStyle(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto'),
                                          ),
                                          onPressed: null,
                                          backgroundColor: Colors.cyan[600],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.transparent,
                                      ),
                                      Text(
                                        '65%',
                                        style: TextStyle(
                                            color: Colors.grey[850],
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Roboto'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              PieChart(
                                key: UniqueKey(),
                                dataMap: dataMap,
                                initialAngleInDegree: 0,
                                animationDuration: Duration(milliseconds: 1000),
                                chartLegendSpacing: 20,
                                chartRadius: 240,
                                legendOptions: LegendOptions(
                                    showLegendsInRow: true,
                                    legendPosition: LegendPosition.bottom,
                                    showLegends: true,
                                    legendTextStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[850])),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 90,
                                    child: FloatingActionButton(
                                      heroTag: 'btn1',
                                      backgroundColor: Colors.grey[100],
                                      child: Text(
                                        '####',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[850]),
                                      ),
                                      onPressed: null,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 90,
                                    child: FloatingActionButton(
                                      heroTag: 'btn2',
                                      backgroundColor: Colors.grey[100],
                                      child: Text(
                                        '####',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[850]),
                                      ),
                                      onPressed: null,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 90,
                                    child: FloatingActionButton(
                                      heroTag: 'btn3',
                                      backgroundColor: Colors.grey[100],
                                      child: Text(
                                        '####',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[850]),
                                      ),
                                      onPressed: null,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
