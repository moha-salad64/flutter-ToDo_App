import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/home.dart';

void main() {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    )
    );
}


     