import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  static final String routeName = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: Color.fromARGB(255, 0, 75, 140),
        centerTitle: false,
        leadingWidth: 130.0,
        leading: SizedBox(width: 130.0),
        title: Align(
          child: Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Text(
              'Resident Registry',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ),
          alignment: Alignment.centerRight,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
              color: Color.fromARGB(255, 152, 201, 58),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tuesday, 6 April',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '04:17',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 32.0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 80.0,
                          child: Row(
                            children: [
                              Text(
                                'Status',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Container(
                          width: 90.0,
                          child: Row(
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),               
                        SizedBox(width: 5.0),
                        Row(
                          children: [
                            Text(
                              'Time Log',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                          ],
                        ),     
                        SizedBox(width: 5.0),
                        Row(
                          children: [
                            Text(
                              'Time Log Out',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                          ],
                        ),     
                        SizedBox(width: 5.0),
                        Row(
                          children: [
                            Text(
                              'Approve',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                          ],
                        ),   
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
              child: Row(
                children: [
                  Container(
                    width: 25.0,
                    height: 25.0,
                    margin: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 37, 246, 11),
                      borderRadius: BorderRadius.all(Radius.circular(12.5)),
                    ),
                  ),
                  Container(
                    width: 90.0,
                    margin: EdgeInsets.only(left: 50.0),
                    child: Text(
                      'Mr Ng',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}