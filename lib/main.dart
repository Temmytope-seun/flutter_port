import 'package:flutter/material.dart';

void main() {
  runApp(MyPort());
}

class MyPort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black12,
            title: Text('Flutter App Developer'),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(21.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        elevation: 0,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Text(
                          'SEUN ADEGBEYENI',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Text(
                          'I develop cool mobile apps with flutter for both andriod and ios.',
                          textAlign: TextAlign.center,
                      ),
                    ),
                    GestureBox(
                      text: '+234 9038718956',
                      icon: Icons.phone,
                    ),
                    GestureBox(
                      text: 'temmytope60@gmail.com',
                      icon: Icons.email,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureCard(
                            icon: Icons.view_headline,
                            text: 'View Portfolio',
                          ),
                          GestureCard(
                            icon: Icons.file_download,
                            text: 'Download',
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}

class GestureBox extends StatelessWidget {
  const GestureBox({
    Key key,
    @required this.icon,
    @required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Card(
          color: Colors.white,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.blueGrey[300],
                ),
                Text(
                  text,
                  style: TextStyle(color: Colors.blueGrey[300]),
                )
              ],
            ),
          ),
        ),
      );
  }
}

class GestureCard extends StatelessWidget {
  const GestureCard({
    Key key,
    @required this.text,
    @required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Card(
          color: Colors.white,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.black87,
                ),
                Text(
                  text,
                  style: TextStyle(color: Colors.black87),
                )
              ],
            ),
          ),
        ),
      );
  }
}

