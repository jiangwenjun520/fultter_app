import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const APPBAR_SCROLL_OFFSET = 100;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: HomeAppBar(),
      ),
      body: Container(),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 40,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.black38,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search Products",
                          style: TextStyle(color: Colors.black38),
                        )
                      ],
                    )
                  ],
                ),
              ),

            )),
        Expanded(flex: 0, child:IconButton(
          icon: Icon(Icons.add_shopping_cart),
          color: Colors.black54,
          onPressed: (){
            //跳转购物车

          },
        ),)
      ],
    );
  }
}
