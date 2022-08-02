import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AliveUi extends StatelessWidget {
  const AliveUi({Key? key}) : super(key: key);

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

class _CardScreenState extends State<CardScreen>
    with SingleTickerProviderStateMixin {
  late Animation cardAnimation,
      delayedcardAnimation,
      fabButtonanim,
      infoAnimation;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    cardAnimation = Tween(begin: 0.0, end: -0.025).animate(
        CurvedAnimation(curve: Curves.fastOutSlowIn, parent: controller));

    delayedcardAnimation = Tween(begin: 0.0, end: -0.05).animate(
        CurvedAnimation(
            curve: Interval(0.7, 1.0, curve: Curves.fastOutSlowIn),
            parent: controller));

    fabButtonanim = Tween(begin: 1.0, end: -0.0008).animate(CurvedAnimation(
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
        parent: controller));

    infoAnimation = Tween(begin: 0.0, end: 0.025).animate(CurvedAnimation(
        curve: Interval(0.7, 1.0, curve: Curves.fastOutSlowIn),
        parent: controller));
  }

  @override
  Widget build(BuildContext context) {
    final devHeight = MediaQuery.of(context).size.height;
    controller.forward();
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
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
                            transform: Matrix4.translationValues(0.0,
                                delayedcardAnimation.value * devHeight, 0.0),
                            width: 260.0,
                            height: 400.0,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                      Positioned(
                        left: 10.0,
                        child: Container(
                            transform: Matrix4.translationValues(
                                0.0, cardAnimation.value * devHeight, 0.0),
                            width: 280.0,
                            height: 350.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                      Container(
                        width: 300.0,
                        height: 400.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('assets/girl.jpg'))),
                      ),
                      Positioned(
                          top: 320.0,
                          left: 20.0,
                          child: Container(
                            transform: Matrix4.translationValues(
                                0.0, infoAnimation.value * devHeight, 0.0),
                            width: 260.0,
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
                                        'Kayla',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      SizedBox(width: 4.0),
                                      Image.asset('assets/afternamelogo.jpg',
                                          height: 20.0, width: 20.0),
                                      SizedBox(width: 100.0),
                                      Text(
                                        '5.8km',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9.0),
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
                  transform: Matrix4.translationValues(
                      0.0, fabButtonanim.value * devHeight, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        elevation: 0.0,
                        onPressed: () {},
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
                            )),
                        child: Container(
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/chatbubble.png'),
                              color: Colors.lightBlueAccent[300],
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        elevation: 0.0,
                        onPressed: () {},
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
        });
  }
}
