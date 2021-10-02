import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Image5 extends StatefulWidget {
  const Image5({Key? key}) : super(key: key);

  @override
  _Image5State createState() => _Image5State();
}

class _Image5State extends State<Image5> {
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
                image: AssetImage('images/photo7.jpeg'),
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
                      height: 200,
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
                                'Chhatri Bagh',
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
              'Chhatri is the Indian word for the canopies that were used as shaded for nobles and members of royalty when they chose to travel outside their palatial houses. Chhatri bagh is as the name suggests filled with such canopies. It was built in the remembrance of the Holkar Dynasty. Each chhatri in the park marks the burial site of a Holkar king or queen. In the evening all the canopies are lit and a beautiful fountain is set in motion. This is a common tourist destination.',
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
                        image: AssetImage('images/photo52.jpg'),
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
                                  image: AssetImage('images/photo52.jpg'),
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
                        image: AssetImage('images/photo63.jpg'),
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
                                    image: AssetImage('images/photo63.jpg')),
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
                        image: AssetImage('images/photo64.jpg'),
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
                                    image: AssetImage('images/photo64.jpg')),
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
