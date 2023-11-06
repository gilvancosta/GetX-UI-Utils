import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/get_responsive_view_controller.dart';

class GetResponsiveViewPage
    extends GetResponsiveView<GetResponsiveViewController> {
  GetResponsiveViewPage({super.key});

  @override
  Widget? phone() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MOBILE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'MOBILE',
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text(
                  screen.context.width.toString(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget? tablet() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TABLET'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'TABLET',
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  screen.context.width.toString(),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget? desktop() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DESKTOP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'DESKTOP',
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                child: Text(
                  screen.context.width.toString(),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

/*   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetResponsiveViewPage'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'GetResponsiveViewPage',
            ),
          ],
        ),
      ),
    );
  } */
}
