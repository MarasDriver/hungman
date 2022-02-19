import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hungman/home/provider/example_provider.dart';
import 'package:provider/provider.dart';

import 'example.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
          onPressed: () {
            Provider.of<ExampleProvider>(context, listen: false).height =
                Random().nextInt(350).toDouble();
            Provider.of<ExampleProvider>(context, listen: false).width =
                Random().nextInt(350).toDouble();
          },
          icon: Icon(Icons.ac_unit),
        )),
        body: Example());
  }
}
