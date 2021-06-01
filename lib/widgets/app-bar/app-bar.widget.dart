import 'package:flutter/material.dart';

class AppBarCounterWidget extends StatelessWidget {
  const AppBarCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Contador'),
      centerTitle: true,
    );
  }
}
