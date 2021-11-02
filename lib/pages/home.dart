import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/styles.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Styles.primaryColor,
      child: Text('HOMEPAGE', style: Styles.titleStyle.copyWith(color: Colors.white),),
    );
  }
}
