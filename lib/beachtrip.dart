import 'package:cloud_firestore/cloud_firestore.dart';

class TravelService{

  getData(){
    var Firestore;
    return Firestore.instance.collection('trips').snapshots();
  }
}