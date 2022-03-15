import 'package:flutter/material.dart';

class SeachPage extends StatefulWidget{
  const SeachPage({Key? key}) : super(key: key);

  @override
  _SeachPageState createState()=>_SeachPageState();



}
class _SeachPageState extends State<SeachPage>{
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
            child: Text("搜索")
        ),
      ),
    );
  }

}