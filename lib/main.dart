import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horse Walking',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHorsePage(),
    );
  }
}

class MyHorsePage extends StatefulWidget {
  @override
  _MyHorsePageState createState() => _MyHorsePageState();
}

class _MyHorsePageState extends State<MyHorsePage> {
  int walk = 1;

  void walking() {
    var walk = 1;
    if (walk > 0) {
      walk = walk + 1;
    } else if (walk < 9) {
      walk = walk - 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Move Your Horse',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(61, 70, 85, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset('images/horse$walk.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: FlatButton(
                    padding: EdgeInsets.all(20.0),
                    splashColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.brown,
                    textColor: Colors.white,
                    disabledColor: Colors.black,
                    disabledTextColor: Colors.grey,
                    child: Text(
                      'Walk',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          walk = walk + 1;
                          if (walk > 8) {
                            walk = 1;
                          }
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
