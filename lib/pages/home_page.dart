import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List _imageUrls = [
    'https://pic.c-ctrip.com/platform/h5/home/baodi2@v7.15.jpg',
    'https://pic.c-ctrip.com/platform/h5/home/baodi2@v7.15.jpg',
    'https://pic.c-ctrip.com/platform/h5/home/baodi2@v7.15.jpg'
  ];

  double appBarAlpha = 0;
  double maxAppbarScrollOffset = 100;

  _onScroll(offset) {
    toggleAppBarDisplay(offset);
  }

  void toggleAppBarDisplay(offset) {
    double alpha = offset / maxAppbarScrollOffset;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: NotificationListener(
                  onNotification: (scrollNotification) {
                    if (scrollNotification is ScrollUpdateNotification &&
                        scrollNotification.depth == 0) {
                      _onScroll(scrollNotification.metrics.pixels);
                    }
                  },
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 160,
                        child: Swiper(
                          itemCount: _imageUrls.length,
                          autoplay: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.network(
                              _imageUrls[index],
                              fit: BoxFit.fill,
                            );
                          },
                          pagination: new SwiperPagination(),
                        ),
                      ),
                      Container(
                        height: 800,
                        child: ListTile(
                          title: Text("sss12ss"),
                        ),
                      )
                    ],
                  ))),
          Opacity(
            opacity: appBarAlpha,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('首页'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
