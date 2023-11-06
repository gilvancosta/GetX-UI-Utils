import 'package:get/get.dart';

class GetViewController extends GetxController {
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
