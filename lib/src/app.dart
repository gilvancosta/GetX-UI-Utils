import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get_x_others_api/src/ui/pages/get_view/get_view_page.dart";

import "../main.dart";
import "ui/pages/context_ext/context_ext_page.dart";
import "ui/pages/get_responsive_view/controller/get_responsive_view_controller.dart";
import "ui/pages/get_responsive_view/get_responsive_view_page.dart";
import "ui/pages/get_view/controller/get_view_controller.dart";
import 'ui/pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: const Locale("pt", "BR"),
      fallbackLocale: const Locale("en", "US"),
      translations: translationKeys,
      getPages: [
        GetPage(name: "/", page: () => const HomePage()),
        GetPage(name: "/context-ext", page: () => const ContextExtPage()),
        GetPage(
          name: "/get-view",
          binding: BindingsBuilder(() {
            Get.lazyPut(() => GetViewController());
          }),
          page: () => const GetViewPage(),
        ),
        GetPage(
          name: "/get-responsive-view",
          binding: BindingsBuilder(() {
            Get.lazyPut(() => GetResponsiveViewController());
          }),
          page: () => GetResponsiveViewPage(),
        ),
      ],
    );
  }
}
