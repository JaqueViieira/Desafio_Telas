import 'package:get/get.dart';
import './show_time_controller.dart';

class ShowTimeBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ShowTimeController());
    }
}