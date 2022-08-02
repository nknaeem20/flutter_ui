import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: FlutterLogo(),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.grey,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.grey,
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment(0.0, -0.40),
                  height: 100.0,
                  color: Colors.white,
                  child: Text(
                    'Get Coaching',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2.0,
                          color: Colors.grey,
                        )
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                            child: Text(
                              'You Have',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                            child: Text(
                              '250',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Container(
                        height: 50.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[100]?.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: Text(
                            'Buy More',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MY COACHES',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                  Text(
                    'VIEW PAST SESSION',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 2,
              mainAxisSpacing: 4,
              shrinkWrap: true,
              children: [
                buildCard('Eric', 'Available', 1),
                buildCard('Eric', 'Away', 2),
                buildCard('Eric', 'Away', 3),
                buildCard('Eric', 'Available', 4),
                buildCard('Eric', 'Away', 5),
                buildCard('Eric', 'Available', 6),
              ],
              )
          ],
        ),
        );
  }
  Widget buildCard(String name, String status,int cardIndex ){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(10.0)
      ),
      elevation: 7.0,
      child: Column(
        children: [
          SizedBox(height:12.0),
          Stack(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(30.0),
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg'))
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away' ? Colors.amber : Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0
                  )
                ),
              )
            ]),
              SizedBox(height: 8.0),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                status,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
                ),
              ),
              SizedBox(height: 15.0),
              Expanded(child: 
              Container(
              width: 190.0,
              decoration: BoxDecoration(
                color: status == 'Away' ? Colors.grey : Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)
                ),
              ),
              child: Center(
                child: Text('Request',style: TextStyle(
                  color: Colors.white, 
                ),),
              ),
              ),
              ),
            ],
          ),);
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0,10.0 ):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0);
    
  }
}
