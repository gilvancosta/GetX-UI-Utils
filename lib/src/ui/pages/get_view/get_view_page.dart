import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_others_api/src/ui/pages/get_view/controller/get_view_controller.dart';

class GetViewPage extends GetView<GetViewController> {
  const GetViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Get View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.getName())),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.setName("Frack Costa");
              },
              child: const Text('Mudar Nome'),
            ),
          ],
        ),
      ),
    );
  }
}
