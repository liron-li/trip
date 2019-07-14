import 'package:flutter/material.dart';

class LoadingContainerWidget extends StatelessWidget {

  final Widget child;
  final bool isLoading;
  final bool cover;

  const LoadingContainerWidget({Key key, @required this.child, @required this.isLoading, this.cover = false}) : super ();

  @override
  Widget build(BuildContext context) {
    return !cover ? !isLoading ? child : _loadingView : Stack(
      children: <Widget>[child, isLoading ? _loadingView : null],
    );
  }

  Widget get _loadingView {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}