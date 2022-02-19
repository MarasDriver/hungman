import 'package:flutter/material.dart';
import 'package:hungman/home/provider/example_provider.dart';
import 'package:provider/provider.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = Provider.of<ExampleProvider>(context).width;
    var _height = Provider.of<ExampleProvider>(context).height;
    print("Realoaded");
    return Column(children: [
      AnimatedContainer(
        duration: Duration(milliseconds: 250),
        color: Colors.green,
        width: _width,
        height: _height,
      ),
    ]);
  }
}
