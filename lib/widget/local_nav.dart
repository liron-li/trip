import 'package:flutter/material.dart';
import 'package:trip/model/home_model.dart';
import 'package:trip/widget/webview.dart';

class LocalNavWidget extends StatelessWidget {
  final List<LocalNavList> localNavList;

  const LocalNavWidget({Key key, @required this.localNavList}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Padding(padding: EdgeInsets.all(7), child: _items(context)),
    );
  }

  _items(BuildContext context) {
    List<Widget> items = [];

    localNavList.forEach((model) {
      items.add(_item(context, model));
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: items,
    );
  }

  Widget _item(BuildContext context, LocalNavList item) {
    print(item);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebView(
                    url: item.url,
                    statusBarColor: item.statusBarColor,
                    hideAppBar: item.hideAppBar)));
      },
      child: Column(
        children: <Widget>[
          Image.network(
            item.icon,
            width: 32,
            height: 32,
          ),
          Text(
            item.title,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
