// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import "package:get/get.dart";

class ContextExtPage extends StatelessWidget {
  const ContextExtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Context Ext'),
      ),
      body: Center(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: context.widthTransformer(reducedBy: 50),
              height: context.heightTransformer(reducedBy: 80),
              color: context.theme.colorScheme.primary,
            ),
            Text("hello".trParams({"name": "Flutter"})),
            context.responsiveValue(
              desktop: const Text("Desktop"),
              tablet: Text("Tablet"),
              mobile: Text("Mobile"),
            ),
            context.responsiveValue(
              desktop: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              tablet: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
              mobile: Container(
                width: 25,
                height: 25,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
