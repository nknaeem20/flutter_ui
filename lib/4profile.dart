import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        ClipPath(
          child: Container(color: Colors.black.withOpacity(0.8)),
          clipper: getClipper(),
        ),
        Positioned(
            width: 350.0,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: <Widget>[
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                SizedBox(height: 90.0),
                Text(
                  'MR. PERFECT',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 15.0),
                Text(
                  'Subscribe Now',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic,
                      ),
                ),
                SizedBox(height: 25.0),
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Edit Name',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )),
                    SizedBox(height: 25.0),
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.redAccent,
                      color: Colors.red,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Log out',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ))
              ],
            ))
      ],
    ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

// class ProfileWidget extends StatelessWidget {
//   const ProfileWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyProfile(),
//     );
//   }
// }

// class MyProfile extends StatefulWidget {
//   const MyProfile({Key? key}) : super(key: key);

//   @override
//   State<MyProfile> createState() => _MyProfileState();
// }

// class _MyProfileState extends State<MyProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           ClipPath(
//             clipper: DiagonalPathClipperTwo(),
//             child: Container(
//               height: 300,
//               // width: 400,
//               color: Colors.black.withOpacity(0.8),
//               // child: Center(child: Text("DiagonalPathClipper()")),
//             ),
//           ),
//           Positioned(
//             width: 350.0,
//             left: 30.0,
//             top: MediaQuery.of(context).size.height/5.5,
//             child: Column(
//               children: [
//                 // Container(
//                 //   width: 150.0,
//                 //   height: 150.0,
//                 //   decoration: BoxDecoration(
//                 //     color: Colors.red,
//                 //     image: DecorationImage(
//                 //       image: NetworkImage('https://miro.medium.com/max/1400/0*0fClPmIScV5pTLoE.jpg'),
//                 //       fit: BoxFit.cover,
//                 //       ),
//                 //       borderRadius: BorderRadius.all(Radius.circular(75.0)),
//                 //       boxShadow: [
//                 //         BoxShadow(blurRadius: 7.0, color: Colors.black)
//                 //       ]
//                 //   ),
//                 // ),
//                 SizedBox(height: 50.0),
//                 Text(
//                   "MR. PERFECT", style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30.0,
//                   ),
//                 ),
//                 Text(
//                   "Subscribe Guys", style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15.0,
//                   ),
//                 ),
//                 SizedBox(height:25.0),
//                 Container(
//                   height: 30.0,
//                   width: 90.0,
//                   child: Material(
//                     borderRadius: BorderRadius.circular(20.0),
//                     shadowColor: Colors.greenAccent,
//                     color: Colors.green,
//                     elevation: 7.0,
//                     child: GestureDetector(
//                       onTap: (){},
//                       child: Center(
//                         child: Text(
//                           "Edit Name",
//                           style: TextStyle(
//                             color: Colors.white,
                            
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
