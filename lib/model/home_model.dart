class HomeModel {
  Config config;
  List<BannerList> bannerList;
  List<LocalNavList> localNavList;
  GridNav gridNav;
  List<SubNavList> subNavList;
  SalesBox salesBox;

  HomeModel(
      {this.config,
        this.bannerList,
        this.localNavList,
        this.gridNav,
        this.subNavList,
        this.salesBox});

  HomeModel.fromJson(Map<String, dynamic> json) {
    config =
    json['config'] != null ? new Config.fromJson(json['config']) : null;
    if (json['bannerList'] != null) {
      bannerList = new List<BannerList>();
      json['bannerList'].forEach((v) {
        bannerList.add(new BannerList.fromJson(v));
      });
    }
    if (json['localNavList'] != null) {
      localNavList = new List<LocalNavList>();
      json['localNavList'].forEach((v) {
        localNavList.add(new LocalNavList.fromJson(v));
      });
    }
    gridNav =
    json['gridNav'] != null ? new GridNav.fromJson(json['gridNav']) : null;
    if (json['subNavList'] != null) {
      subNavList = new List<SubNavList>();
      json['subNavList'].forEach((v) {
        subNavList.add(new SubNavList.fromJson(v));
      });
    }
    salesBox = json['salesBox'] != null
        ? new SalesBox.fromJson(json['salesBox'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    if (this.bannerList != null) {
      data['bannerList'] = this.bannerList.map((v) => v.toJson()).toList();
    }
    if (this.localNavList != null) {
      data['localNavList'] = this.localNavList.map((v) => v.toJson()).toList();
    }
    if (this.gridNav != null) {
      data['gridNav'] = this.gridNav.toJson();
    }
    if (this.subNavList != null) {
      data['subNavList'] = this.subNavList.map((v) => v.toJson()).toList();
    }
    if (this.salesBox != null) {
      data['salesBox'] = this.salesBox.toJson();
    }
    return data;
  }
}

class Config {
  String searchUrl;

  Config({this.searchUrl});

  Config.fromJson(Map<String, dynamic> json) {
    searchUrl = json['searchUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['searchUrl'] = this.searchUrl;
    return data;
  }
}

class BannerList {
  String icon;
  String url;

  BannerList({this.icon, this.url});

  BannerList.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    return data;
  }
}

class LocalNavList {
  String icon;
  String title;
  String url;
  String statusBarColor;
  bool hideAppBar;

  LocalNavList(
      {this.icon, this.title, this.url, this.statusBarColor, this.hideAppBar});

  LocalNavList.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
    url = json['url'];
    statusBarColor = json['statusBarColor'];
    hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    data['statusBarColor'] = this.statusBarColor;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class GridNav {
  Hotel hotel;
  Flight flight;
  Travel travel;

  GridNav({this.hotel, this.flight, this.travel});

  GridNav.fromJson(Map<String, dynamic> json) {
    hotel = json['hotel'] != null ? new Hotel.fromJson(json['hotel']) : null;
    flight =
    json['flight'] != null ? new Flight.fromJson(json['flight']) : null;
    travel =
    json['travel'] != null ? new Travel.fromJson(json['travel']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hotel != null) {
      data['hotel'] = this.hotel.toJson();
    }
    if (this.flight != null) {
      data['flight'] = this.flight.toJson();
    }
    if (this.travel != null) {
      data['travel'] = this.travel.toJson();
    }
    return data;
  }
}

class Hotel {
  String startColor;
  String endColor;
  MainItem mainItem;
  Item1 item1;
  Item2 item2;
  Item3 item3;
  Item4 item4;

  Hotel(
      {this.startColor,
        this.endColor,
        this.mainItem,
        this.item1,
        this.item2,
        this.item3,
        this.item4});

  Hotel.fromJson(Map<String, dynamic> json) {
    startColor = json['startColor'];
    endColor = json['endColor'];
    mainItem = json['mainItem'] != null
        ? new MainItem.fromJson(json['mainItem'])
        : null;
    item1 = json['item1'] != null ? new Item1.fromJson(json['item1']) : null;
    item2 = json['item2'] != null ? new Item2.fromJson(json['item2']) : null;
    item3 = json['item3'] != null ? new Item3.fromJson(json['item3']) : null;
    item4 = json['item4'] != null ? new Item4.fromJson(json['item4']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startColor'] = this.startColor;
    data['endColor'] = this.endColor;
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    return data;
  }
}

class MainItem {
  String title;
  String icon;
  String url;
  String statusBarColor;

  MainItem({this.title, this.icon, this.url, this.statusBarColor});

  MainItem.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    icon = json['icon'];
    url = json['url'];
    statusBarColor = json['statusBarColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['statusBarColor'] = this.statusBarColor;
    return data;
  }
}

class Item1 {
  String title;
  String url;
  String statusBarColor;

  Item1({this.title, this.url, this.statusBarColor});

  Item1.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    statusBarColor = json['statusBarColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['statusBarColor'] = this.statusBarColor;
    return data;
  }
}

class Item2 {
  String title;
  String url;

  Item2({this.title, this.url});

  Item2.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item3 {
  String title;
  String url;
  bool hideAppBar;

  Item3({this.title, this.url, this.hideAppBar});

  Item3.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class Item4 {
  String title;
  String url;
  bool hideAppBar;

  Item4({this.title, this.url, this.hideAppBar});

  Item4.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class Flight {
  String startColor;
  String endColor;
  MainItem mainItem;
  Item1 item1;
  Item2 item2;
  Item3 item3;
  Item4 item4;

  Flight(
      {this.startColor,
        this.endColor,
        this.mainItem,
        this.item1,
        this.item2,
        this.item3,
        this.item4});

  Flight.fromJson(Map<String, dynamic> json) {
    startColor = json['startColor'];
    endColor = json['endColor'];
    mainItem = json['mainItem'] != null
        ? new MainItem.fromJson(json['mainItem'])
        : null;
    item1 = json['item1'] != null ? new Item1.fromJson(json['item1']) : null;
    item2 = json['item2'] != null ? new Item2.fromJson(json['item2']) : null;
    item3 = json['item3'] != null ? new Item3.fromJson(json['item3']) : null;
    item4 = json['item4'] != null ? new Item4.fromJson(json['item4']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startColor'] = this.startColor;
    data['endColor'] = this.endColor;
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    return data;
  }
}

class Travel {
  String startColor;
  String endColor;
  MainItem mainItem;
  Item1 item1;
  Item2 item2;
  Item3 item3;
  Item4 item4;

  Travel(
      {this.startColor,
        this.endColor,
        this.mainItem,
        this.item1,
        this.item2,
        this.item3,
        this.item4});

  Travel.fromJson(Map<String, dynamic> json) {
    startColor = json['startColor'];
    endColor = json['endColor'];
    mainItem = json['mainItem'] != null
        ? new MainItem.fromJson(json['mainItem'])
        : null;
    item1 = json['item1'] != null ? new Item1.fromJson(json['item1']) : null;
    item2 = json['item2'] != null ? new Item2.fromJson(json['item2']) : null;
    item3 = json['item3'] != null ? new Item3.fromJson(json['item3']) : null;
    item4 = json['item4'] != null ? new Item4.fromJson(json['item4']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startColor'] = this.startColor;
    data['endColor'] = this.endColor;
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    return data;
  }
}

class SubNavList {
  String icon;
  String title;
  String url;
  bool hideAppBar;

  SubNavList({this.icon, this.title, this.url, this.hideAppBar});

  SubNavList.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
    url = json['url'];
    hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class SalesBox {
  String icon;
  String moreUrl;
  BigCard1 bigCard1;
  BigCard2 bigCard2;
  SmallCard1 smallCard1;
  SmallCard2 smallCard2;
  SmallCard3 smallCard3;
  SmallCard4 smallCard4;

  SalesBox(
      {this.icon,
        this.moreUrl,
        this.bigCard1,
        this.bigCard2,
        this.smallCard1,
        this.smallCard2,
        this.smallCard3,
        this.smallCard4});

  SalesBox.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    moreUrl = json['moreUrl'];
    bigCard1 = json['bigCard1'] != null
        ? new BigCard1.fromJson(json['bigCard1'])
        : null;
    bigCard2 = json['bigCard2'] != null
        ? new BigCard2.fromJson(json['bigCard2'])
        : null;
    smallCard1 = json['smallCard1'] != null
        ? new SmallCard1.fromJson(json['smallCard1'])
        : null;
    smallCard2 = json['smallCard2'] != null
        ? new SmallCard2.fromJson(json['smallCard2'])
        : null;
    smallCard3 = json['smallCard3'] != null
        ? new SmallCard3.fromJson(json['smallCard3'])
        : null;
    smallCard4 = json['smallCard4'] != null
        ? new SmallCard4.fromJson(json['smallCard4'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['moreUrl'] = this.moreUrl;
    if (this.bigCard1 != null) {
      data['bigCard1'] = this.bigCard1.toJson();
    }
    if (this.bigCard2 != null) {
      data['bigCard2'] = this.bigCard2.toJson();
    }
    if (this.smallCard1 != null) {
      data['smallCard1'] = this.smallCard1.toJson();
    }
    if (this.smallCard2 != null) {
      data['smallCard2'] = this.smallCard2.toJson();
    }
    if (this.smallCard3 != null) {
      data['smallCard3'] = this.smallCard3.toJson();
    }
    if (this.smallCard4 != null) {
      data['smallCard4'] = this.smallCard4.toJson();
    }
    return data;
  }
}

class BigCard1 {
  String icon;
  String url;
  String title;

  BigCard1({this.icon, this.url, this.title});

  BigCard1.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    url = json['url'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class BigCard2 {
  String icon;
  String url;
  String title;

  BigCard2({this.icon, this.url, this.title});

  BigCard2.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    url = json['url'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class SmallCard1 {
  String icon;
  String url;
  String title;

  SmallCard1({this.icon, this.url, this.title});

  SmallCard1.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    url = json['url'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class SmallCard2 {
  String icon;
  String url;
  String title;

  SmallCard2({this.icon, this.url, this.title});

  SmallCard2.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    url = json['url'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class SmallCard3 {
  String icon;
  String url;
  String title;

  SmallCard3({this.icon, this.url, this.title});

  SmallCard3.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    url = json['url'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class SmallCard4 {
  String icon;
  String url;
  String title;

  SmallCard4({this.icon, this.url, this.title});

  SmallCard4.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    url = json['url'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}