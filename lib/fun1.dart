import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Fun1 extends StatefulWidget {
  const Fun1({Key? key}) : super(key: key);

  @override
  _Fun1State createState() => _Fun1State();
}

class _Fun1State extends State<Fun1> {
  bool isReadMore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/photo17.jpeg'),
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
                      height: 170,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Crescent Water Park',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: buildText(
                'The very beautiful and mesmerizing Crescent Water Park is situated in Kampel Road in Indore. This place which is full of absolute fun is located at a distance of 26 km from the city of Indore. It is an amazing place to visit and spend time along with friends and family. It is more like a recreational centre to while away all the tension and have an adventurous time. The ticket price of Crescent Water Park, as well as amusement park, is as given below\n• For the water park, the entry fee to visit both amusement park, as well as the water park, is INR 400 for above 3 feet\n• The costume for males cost INR 20 while for the females it cost INR 30.\n• The swimming costume for the children cost around INR 20.\n• In case a locker is needed for safety purposes, it cost INR 50. You need to pay INR 150 and INR 50 gets refunded.\n• Some exciting rides and games present include bull fight which costs INR 20, the exciting stacking car which cost INR 20, roller coaster ride of INR 20, other indoor games for INR 20.\n• Some rides including the glider, Columbus, gyroscope, HMGR and mini train cup soccer sun and moon are given the first ride free.\n• The timings to visit the place are from 10:00 AM to 6:00 PM. It is surely the best possible way to spend a day off.'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Container(
              alignment: Alignment.centerRight,
              child: buildButton(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'More Images',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: new Container(
                    height: 120,
                    margin: EdgeInsets.only(right: 1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/photo47.jpg'),
                      ),
                    ),
                    child: Container(
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Image(
                                  image: AssetImage('images/photo47.jpg'),
                                ),
                              ));
                        },
                        child: Text(''),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.1)
                            ]),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: new Container(
                    height: 120,
                    margin: EdgeInsets.only(left: 3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/photo53.jpg'),
                      ),
                    ),
                    child: Container(
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Image(
                                    image: AssetImage('images/photo53.jpg')),
                              ));
                        },
                        child: Text(''),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.1)
                            ]),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: new Container(
                    height: 120,
                    margin: EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/photo54.jpg'),
                      ),
                    ),
                    child: Container(
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Image(
                                    image: AssetImage('images/photo54.jpg')),
                              ));
                        },
                        child: Text(''),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.1)
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Directions',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.navigation),
          ),
        ],
      ),
    );
  }

  Widget buildButton() => TextButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 15),
        ),
        child: Text(isReadMore ? 'Read Less' : 'Read More'),
        onPressed: () {
          setState(
            () {
              isReadMore = !isReadMore;
            },
          );
        },
      );

  Widget buildText(String text) {
    final maxLines = isReadMore ? null : 3;
    final overflow = isReadMore ? TextOverflow.visible : TextOverflow.ellipsis;
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.black54,
      ),
    );
  }
}
