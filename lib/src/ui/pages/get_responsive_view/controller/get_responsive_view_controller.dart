// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

class GetResponsiveViewController extends GetxController {
  var name = 'João Batista'.obs;

  @override
  void onReady() {
    super.onReady();
    // ignore: avoid_print
    print("GetViewController onReady");
  }

  void setName(String value) => name.value = value;

  String getName() => name.value;
}
