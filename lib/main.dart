import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _imagePaths=[
    'images/ima1.png',
    'images/ima2.png',
    'images/ima3.png',
    'images/ima4.png',
    'images/ima5.png'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: CarouselSlider(options: CarouselOptions(autoPlay: true), items: _imagePaths.map((imagePaths) {
            return Builder(builder: (context){
              return Container(
                width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  child: Image.asset(imagePaths));
            });
          }).toList()),
        ),
      ),
    );
  }
}
