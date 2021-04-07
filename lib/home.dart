import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_button/menu_button.dart';

class Home extends StatefulWidget {

  static final String routeName = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String sortBy;
  String dir;
  int tempStatus = 0;
  bool isSearch = false;
  int attempt = 3;
  DateTime now;

  @override
  void initState() {
    super.initState();
    load();
  }

  void load() {
    setState(() {
      now = DateTime.now();
    });
    waitAMinute();
  }

  void waitAMinute() {
    Future.delayed(Duration(minutes: 1), () {
      load();
    });
  }

  String getDate() {
    var dt = DateTime.now();
    return formatDate(dt, [DD, ', ', d, ' ', MM]);
  }

  String getTime() {
    var dt = DateTime.now();
    return formatDate(dt, [hh, ':', nn]);
  }

  List<Widget> buildList() {
    final lx = [
      Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(width: 10.0),
                      SizedBox(
                        width: 70.0,
                        child: Text(
                          'Name: ',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Mr Ng Thye Peng',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 120.0,
                      child: TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          'Clear',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 83, 88, 82),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 83, 88, 82),
                          backgroundColor: Color.fromARGB(255, 40, 193, 53),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 45.0),
                SizedBox(
                  width: 70.0,
                  child: Text(
                    'Time In: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '08:12',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 30.0),
                SizedBox(
                  width: 80.0,
                  child: Text(
                    'Time Out: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '12:05',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 45.0),
                SizedBox(width: 70.0),
                Text(
                  '01:30',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 30.0),
                SizedBox(width: 80.0),
                Text(
                  '--:--',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Divider(
                height: 2.0,
                thickness: 2.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),

      Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 0.0, bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 25.0,
                        height: 25.0,
                        margin: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 195, 212, 193),
                          borderRadius: BorderRadius.all(Radius.circular(12.5)),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      SizedBox(
                        width: 70.0,
                        child: Text(
                          'Name: ',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Mdm Ong Kim Swee',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 120.0,
                      child: TextButton(
                        onPressed: null,
                        child: Text(
                          'Absent',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 83, 88, 82),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 83, 88, 82),
                          backgroundColor: Color.fromARGB(255, 110, 120, 111),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 45.0),
                SizedBox(
                  width: 70.0,
                  child: Text(
                    'Time In: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '10:12',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 30.0),
                SizedBox(
                  width: 80.0,
                  child: Text(
                    'Time Out: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '03:42',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Divider(
                height: 2.0,
                thickness: 2.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),

      Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 0.0, bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(width: 10.0),
                      SizedBox(
                        width: 70.0,
                        child: Text(
                          'Name: ',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Mdm Lim Yan Mei',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 120.0,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            tempStatus = 1;
                            --attempt;
                          });
                          Future.delayed(Duration(seconds: 15), () {
                            setState(() {
                              tempStatus = 0;
                              ++attempt;
                            });
                          });
                        },
                        child: Text(
                          tempStatus == 0 ? 'Exit (Temp)' : 'Clear (Temp)',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 83, 88, 82),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 83, 88, 82),
                          backgroundColor: tempStatus == 0 ? Color.fromARGB(255, 232, 203, 21) : Color.fromARGB(255, 40, 193, 53),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 45.0),
                SizedBox(
                  width: 70.0,
                  child: Text(
                    'Time In: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '08:45',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 30.0),
                SizedBox(
                  width: 80.0,
                  child: Text(
                    'Time Out: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '12:05',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 45.0),
                SizedBox(width: 70.0),
                Text(
                  '--:--',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 40.0),
                SizedBox(width: 80.0),
                Text(
                  '01:40',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 45.0),
                SizedBox(width: 70.0),
                Text(
                  '--:--',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 40.0),
                SizedBox(width: 80.0),
                Text(
                  '01:43',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Divider(
                height: 2.0,
                thickness: 2.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),

      Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 0.0, bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(width: 10.0),
                      SizedBox(
                        width: 70.0,
                        child: Text(
                          'Name: ',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Mr Goh Geok Hui',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 120.0,
                      child: TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          'Clear',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 83, 88, 82),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 83, 88, 82),
                          backgroundColor: Color.fromARGB(255, 40, 193, 53),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 45.0),
                SizedBox(
                  width: 70.0,
                  child: Text(
                    'Time In: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '08:05',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 30.0),
                SizedBox(
                  width: 80.0,
                  child: Text(
                    'Time Out: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '--:--',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Divider(
                height: 2.0,
                thickness: 2.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),

      Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 0.0, bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 25.0,
                        height: 25.0,
                        margin: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 195, 212, 193),
                          borderRadius: BorderRadius.all(Radius.circular(12.5)),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      SizedBox(
                        width: 70.0,
                        child: Text(
                          'Name: ',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Mdm Chan Kong Beng',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 120.0,
                      child: TextButton(
                        onPressed: null,
                        child: Text(  
                          'Absent',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 83, 88, 82),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 83, 88, 82),
                          backgroundColor: Color.fromARGB(255, 110, 120, 111),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 45.0),
                SizedBox(
                  width: 70.0,
                  child: Text(
                    'Time In: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '10:05',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 30.0),
                SizedBox(
                  width: 80.0,
                  child: Text(
                    'Time Out: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '04:05',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Divider(
                height: 2.0,
                thickness: 2.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),

      Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 0.0, bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 25.0,
                        height: 25.0,
                        margin: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 195, 212, 193),
                          borderRadius: BorderRadius.all(Radius.circular(12.5)),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      SizedBox(
                        width: 70.0,
                        child: Text(
                          'Name: ',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Mdm Yang How Wee',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 120.0,
                      child: TextButton(
                        onPressed: null,
                        child: Text(
                          'Absent',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 83, 88, 82),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 83, 88, 82),
                          backgroundColor: Color.fromARGB(255, 110, 120, 111),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 45.0),
                SizedBox(
                  width: 70.0,
                  child: Text(
                    'Time In: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '09:50',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 30.0),
                SizedBox(
                  width: 80.0,
                  child: Text(
                    'Time Out: ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  '03:56',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Divider(
                height: 2.0,
                thickness: 2.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ];
    return lx;
  }

  Widget getIcon(String value) {
    if (dir == 'asc' && value == sortBy) {
      return Icon(Icons.arrow_drop_up);
    }

    else if (dir == 'desc' && value == sortBy) {
      return Icon(Icons.arrow_drop_down);
    }

    return Container();
  }

  @override
  Widget build(BuildContext context) {
    List<String> keys = <String>[
      'Status',
      'Time In',
      'Time Out',
      'Approve',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60.0,
        brightness: Brightness.dark,
        backgroundColor: Color.fromARGB(255, 0, 75, 140),
        centerTitle: false,
        leadingWidth: 160.0,
        leading: SizedBox(
          width: 160.0,
          child: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Image.asset('images/imgs/logo.png'),
          ),
        ),
        title: Align(
          child: Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Text(
              'Resident Registry',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          alignment: Alignment.centerRight,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
              color: Color.fromARGB(255, 152, 201, 58),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  isSearch ?
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: CupertinoTextField(
                      cursorColor: Colors.grey,
                      prefix: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          setState(() {
                            isSearch = false;
                          });
                        },
                      ),
                    ),
                  ) :
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        getDate(),
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            getTime(),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 20.0),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isSearch = true;
                                });
                              },
                              icon: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 32.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  // InkWell(
                  //   onTap: () {

                  //   },
                  //   child: Text(
                  //     'Sort by',
                  //     style: TextStyle(
                  //       fontSize: 16.0,
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // ),
                  MenuButton<String>(
                    topDivider: false,
                    decoration: BoxDecoration(
                      border: null,
                      color: null,
                    ),
                    child: Container(
                      width: 50.0,
                      color: Color.fromARGB(255, 152, 201, 58),
                      child: Text(
                        'Sort by',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ), 
                    items: keys, 
                    divider: Container(),
                    itemBuilder: (value) {
                      return Container(
                        padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                        child: Row(
                          children: [
                            Text(value),
                            getIcon(value),
                          ],
                        ),
                      );
                    },
                    toggledChild: Container(
                      width: 50.0,
                      color: Color.fromARGB(255, 152, 201, 58),
                      child: Text(
                        'Sort by',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    onItemSelected: (value) {
                      setState(() {
                        if (value == sortBy) {
                          dir = dir == 'desc' ? 'asc' : 'desc';
                        }

                        if (dir == null) {
                          dir = 'asc';
                        }

                        if (value != sortBy) {
                          sortBy = value;
                          dir = 'asc';
                        }
                      });
                    },
                    onMenuButtonToggle: (b) {

                    },
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: buildList(),
                  ),
                ),
              ),
            ),

            Container(
              color: Color.fromARGB(255, 0, 75, 140),
              child: Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Total Attendance : ',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 238, 246, 251),
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(
                      '6',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color.fromARGB(255, 238, 246, 251),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Attempts : ',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Roboto',
                        color: Color.fromARGB(255, 238, 246, 251),
                      ),
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color.fromARGB(255, 238, 246, 251),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Present : ',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 238, 246, 251),
                      ),
                    ),
                    Text(
                      '$attempt',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color.fromARGB(255, 238, 246, 251),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}