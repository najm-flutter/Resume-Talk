import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyServices extends GetxService {
  Future<MyServices> init() async {
    await GetStorage.init();
   
    return this;
  }
}

startServices()async{
  await Get.putAsync(() => MyServices().init()) ;
}
