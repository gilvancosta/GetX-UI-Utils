import "package:flutter/material.dart";
import "package:get/get.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('titleApp'.tr),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("hello".trParams({"name": "Flutter"})),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Get.toNamed("context-ext"),
            child: Text("contextExt".tr),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Get.toNamed("get-view"),
            child: const Text("get view"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Get.toNamed("get-responsive-view"),
            child: const Text("get-responsive-view"),
          ),


        ],
      )),
    );
  }
}
