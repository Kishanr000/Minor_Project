import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Secondscreen1 extends StatefulWidget {
  const Secondscreen1({Key? key}) : super(key: key);

  @override
  _Secondscreen1State createState() => _Secondscreen1State();
}

class _Secondscreen1State extends State<Secondscreen1> {
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
                image: AssetImage('images/photo11.jpeg'),
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
                        padding: const EdgeInsets.fromLTRB(8.0, 22.0, 8.0, 0),
                        child: Text(
                          'Ralamandal',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                              child: Text(
                                'Wildlife Senctuary',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
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
              'The Ralamandal Wildlife Sanctuary is located in Indore established in 1981. Find its wiki from entry timing, fees, best time to visit, distance from major cities and review. It is located in the state of Madhya Pradesh and near by Amarkantak. It is one of the oldest sanctuary in Madhya Pradesh having different species of birds and other wildlifexistence of beautiful birds attracts the tourists. The people came here for doing trekking also and to see the amazing view of the plants like Eucalyptus , Bamboo, Chandan, Teak, Babool, Saja and many more. These are found in limited areas of India. You will get to see many wildlife like rabbits, deer, and different types of birds. The facilities of hiring a bike or a car according to the people inside the park is available to explore the park. One more option to move around the park is by enjoying the camel ride as well as exploring the park. Don’t miss to visit the Gwalior for weekend trip which comes under same state.',
            ),
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
                        image: AssetImage('images/photo38.jpeg'),
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
                                  image: AssetImage('images/photo38.jpeg'),
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
                    margin: EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/photo36.jpeg'),
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
                                    image: AssetImage('images/photo36.jpeg')),
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
                        image: AssetImage('images/photo11.jpeg'),
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
                                    image: AssetImage('images/photo11.jpeg')),
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
