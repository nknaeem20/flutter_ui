import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardScreen(),
    );
  }
}

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text(
          "Near By",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: FlutterLogo(
              size: 40.0,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            child: Stack(
              children: [
                Positioned(
                  left: 20.0,
                  child: Container(
                      width: 260.0,
                      height: 400.0,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                Positioned(
                  left: 10.0,
                  child: Container(
                      width: 280.0,
                      height: 400.0,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                Container(
                  width: 300.0,
                  height: 400.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image:
                          DecorationImage(image: AssetImage('assets/boy.jpg'))),
                ),
                Positioned(
                    top: 320.0,
                    left: 15.0,
                    child: Container(
                      width: 270.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1.0,
                              color: Colors.black12,
                              spreadRadius: 2.0,
                            )
                          ]),
                      child: Container(
                        padding: EdgeInsets.all(7.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Kabir',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(width: 4.0),
                                Image.asset('assets/afternamelogo.jpg',
                                    height: 20.0, width: 20.0),
                                SizedBox(width: 110.0),
                                Text(
                                  '5.8km',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              children: [
                                Text(
                                  'Fate is Wonderful',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  elevation: 0.0,
                  onPressed: (){},
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
                ),
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                      color: Colors.transparent,
                      style: BorderStyle.solid,
                      width: 2.0,
                    )
                  ),
                  child: Container(
                    child: Center(
                      child: IconButton(
                        onPressed: (){}, 
                      icon: Image.asset('assets/chatbubble.png'),
                      color: Colors.lightBlueAccent[300],
                      ),
                    ),
                  ),
                ),
                 FloatingActionButton(
                   elevation: 0.0,
                   onPressed: (){},
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                backgroundColor: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
