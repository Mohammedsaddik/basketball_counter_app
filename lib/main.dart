import 'package:flutter/material.dart';
import 'package:untitled/pointsCounter.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointsCounter(),
    );
  }
}

