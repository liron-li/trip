import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:trip/dao/home_dao.dart';
import 'package:trip/model/home_model.dart';
import 'package:trip/widget/grid_nav.dart';
import 'package:trip/widget/loading_container.dart';
import 'package:trip/widget/local_nav.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  String resultString = '';
  List _imageUrls = [
    'https://pic.c-ctrip.com/platform/h5/home/baodi2@v7.15.jpg',
    'https://pic.c-ctrip.com/platform/h5/home/baodi2@v7.15.jpg',
    'https://pic.c-ctrip.com/platform/h5/home/baodi2@v7.15.jpg'
  ];

  List<BannerList> bannerList = [];
  List<LocalNavList> localNavList = [];

  double appBarAlpha = 0;
  double maxAppbarScrollOffset = 100;
  bool isLoading = true;

  _onScroll(offset) {
    toggleAppBarDisplay(offset);
  }

  @override
  void initState() {
    super.initState();
    _onRefresh();
  }

  Future<Null> _onRefresh() async {
    try {
      HomeModel model = await HomeDao.fetch();
      setState(() {
        bannerList = model.bannerList;
        localNavList = model.localNavList;
        isLoading = false;
      });
    } catch (e) {

    }
    return null;
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
      backgroundColor: Color(0xfff2f2f2),
      body: LoadingContainerWidget(child: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: RefreshIndicator(child: NotificationListener(
                  onNotification: (scrollNotification) {
                    if (scrollNotification is ScrollUpdateNotification &&
                        scrollNotification.depth == 0) {
                      _onScroll(scrollNotification.metrics.pixels);
                    }
                  },
                  child: ListView(
                    children: <Widget>[
                      _banner,
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 4, 4, 7),
                        child: LocalNavWidget(localNavList: localNavList),
                      ),
                      GridNavWidget(),
                      Container(
                        height: 800,
                        child: ListTile(
                          title: Text('aaa'),
                        ),
                      )
                    ],
                  )), onRefresh: _onRefresh)),
          _appBar
        ],
      ), isLoading: isLoading),
    );
  }

  Widget get _banner {
    return Container(
      height: 160,
      child: Swiper(
        itemCount: bannerList.length,
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            bannerList[index].icon,
            fit: BoxFit.fill,
          );
        },
        pagination: new SwiperPagination(),
      ),
    );
  }

  Widget get _appBar {
    return Opacity(
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
    );
  }
}
