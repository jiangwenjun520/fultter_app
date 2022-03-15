import 'package:flutter/material.dart';

class MyPage extends StatefulWidget{
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState()=>_MyPageState();



}
class _MyPageState extends State<MyPage>{
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
            child: Text("我的")
        ),
      ),
    );
  }

}