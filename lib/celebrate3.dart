import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Celebrate3 extends StatefulWidget {
  const Celebrate3({Key? key}) : super(key: key);

  @override
  _Celebrate3State createState() => _Celebrate3State();
}

class _Celebrate3State extends State<Celebrate3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/photo19.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue.withOpacity(0.2),
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(1),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.keyboard_backspace_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 30.0, 8.0, 0),
                        child: Text(
                          'Navratri',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                        child: Text(
                          '\"The Festival Of Dandiya\"',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                          ),
                        ),
                      ),
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
