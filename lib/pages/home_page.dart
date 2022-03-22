import 'package:flutter/material.dart';
import 'package:flutter_app/pages/NLIndicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const APPBAR_SCROLL_OFFSET = 100;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Image> imgs = [
    //建立了一个图片数组
    Image.network(
      "https://images.unsplash.com/photo-1477346611705-65d1883cee1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://images.unsplash.com/photo-1498550744921-75f79806b8a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      fit: BoxFit.cover,
    ),
  ];
  final SwiperController _pageController = SwiperController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
          child: HomeAppBar(), preferredSize: const Size.fromHeight(90)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //轮播图
            banna(),
            //三模块
            moduleLayout(),
          ],
        ),
      ),
    );
  }

  Container banna() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 240,
      child: mySwiper(),
    );
  }

  Widget mySwiper() {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return imgs[index];
      },
      index: 0,
      loop: true,
      itemCount: imgs.length,
      autoplay: true,
      pagination: SwiperPagination(
          builder: SwiperCustomPagination(
              builder: (BuildContext context, SwiperPluginConfig config) {
            return NLIndicator(config.activeIndex, imgs.length);
          }),
          alignment: Alignment.bottomCenter),
      layout: SwiperLayout.CUSTOM,
      controller: SwiperController(),
      customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
          .addRotate([0 / 180, 0.0, 0 / 180]).addTranslate([
        const Offset(-360.0, 0),
        const Offset(0.0, 0.0),
        const Offset(360.0, 0)
      ]),
      itemWidth: 400.0,
      itemHeight: 240.0,
      onTap: (index) => {print(index)},
    );
  }

  Widget moduleLayout() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: [moduleLayout_1(), moduleLayout_2(), moduleLayout_3()],
      ),
    );
  }

  Widget moduleLayout_3() {
    return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.deepPurple,
              width: 50,
              height: 50,
            ),
            const Text(
              "Coupon",
              maxLines: 1,
              textAlign: TextAlign.center,
              softWrap: false,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
          ],
        ),
        flex: 1,
      );
  }

  Widget moduleLayout_2() {
    return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.deepPurple,
              width: 50,
              height: 50,
            ),
            const Text(
              "New Products",
              maxLines: 1,
              textAlign: TextAlign.center,
              softWrap: false,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
          ],
        ),
        flex: 1,
      );
  }

  Widget moduleLayout_1() {
    return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.deepPurple,
              width: 50,
              height: 50,
            ),
            const Text(
              "All Products",
              maxLines: 1,
              textAlign: TextAlign.center,
              softWrap: false,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
          ],
        ),
        flex: 1,
      );
  }
}

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
        padding: EdgeInsets.fromLTRB(0, statusBarHeight, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: 150,
                      height: 40,
                      child: Image.asset("assets/images/app_home_title.png"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: IconButton(
                        icon: const Icon(Icons.add_shopping_cart),
                        color: Colors.black54,
                        onPressed: () {
                          //跳转购物车
                          print("跳转购物车");
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: searchProducts(),
              ),
            ],
          ),
        ));
  }

  Widget searchProducts() {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 35,
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
            ),
          ],
        ),
      ),
    );
  }
}
