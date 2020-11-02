import 'dart:html';

import 'package:clima/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPosition();
  }

  void getPosition() async{
    Location location = Location();
    await location.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
