import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const APPBAR_SCROLL_OFFSET = 100;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  final List<String> _imageList = [
    "https://pages.ctrip.com/commerce/promote/20180718/yxzy/img/640sygd.jpg",
    "https://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg",
    "https://dimg04.c-ctrip.com/images/700c10000000pdili7D8B_780_235_57.jpg",
  ];
  double appBarAlpha = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: <Widget>[
        MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: NotificationListener(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollNotification &&
                    scrollNotification.depth == 0) {
                  _onSroll(scrollNotification.metrics.pixels);
                }
                return true;
              },
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 160,
                    child: Swiper(
                        itemCount: _imageList.length,
                      autoplay: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          _imageList[index],
                          fit: BoxFit.fill,
                        );
                      },
                      pagination: const SwiperPagination(),
                    ),
                  ),
                  Container(
                    height: 1000,
                    child: const ListTile(
                      title: Text('哈哈'),
                    ),
                  )
                ],
              ),
            )),
        Opacity(
          child: Container(
            height: 80,
            decoration: BoxDecoration(color: Colors.white),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("首页"),
              ),
            ),
          ),
          opacity: appBarAlpha,
        ),
      ],
    ));
  }

  void _onSroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
    print(alpha);
  }
}
