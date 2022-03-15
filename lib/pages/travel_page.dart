import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget{
  const TravelPage({Key? key}) : super(key: key);

  @override
  _TravelPageState createState()=>_TravelPageState();



}
class _TravelPageState extends State<TravelPage>{
  final PageController _controller =PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(10),
        child: const Center(
            child: Text("旅拍")
        ),
      ),
    );
  }

}