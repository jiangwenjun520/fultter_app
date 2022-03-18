import 'package:flutter/material.dart';

class SeachPage extends StatefulWidget {
  const SeachPage({Key? key}) : super(key: key);

  @override
  _SeachPageState createState() => _SeachPageState();
}

class _SeachPageState extends State<SeachPage> {
  List list = [];
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var display1;
    return Scaffold(
        appBar: AppBar(
          title: const Text("搜索"),
        ),
        restorationId: "fdakgaewa",
        body: Container(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.deepOrange,
            child: Column(
              children: <Widget>[
                Column(
                    children:
                    this.list.map((e) => Chip(label: Text("${e}"))).toList(),
                ),
                  const SizedBox(height: 20),
                RaisedButton(
                  child: const Text("点击"),
                  onPressed: (){
                    setState(() {
                      list.add("点击新增一条数据");
                    });
                  },
                )
                
              ],
            ),
          ),
        )
    );
  }
}
