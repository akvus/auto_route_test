import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/auto_route.gr.dart';
import 'package:flutter/material.dart';

class Child2Page extends StatelessWidget {
  const Child2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Child 2'),
        onPressed: () {
          context.pushRoute(Child21Route());
        },
      ),
    );
  }
}
