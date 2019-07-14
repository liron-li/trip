import 'package:flutter/material.dart';
import 'package:trip/model/home_model.dart';

class GridNavWidget extends StatelessWidget {

  final GridNav gridNav;
  final String name;

  const GridNavWidget({Key key,  this.gridNav, this.name = "GridNavWidget"}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}