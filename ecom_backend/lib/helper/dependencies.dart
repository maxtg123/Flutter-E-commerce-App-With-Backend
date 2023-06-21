import 'package:ecom_backend/data/api/api_client.dart';
import 'package:ecom_backend/data/repository/popular_product_repo.dart';
import 'package:ecom_backend/utils/app_constants.dart';
import 'package:get/get.dart';

import '../controller/popular_product_controller.dart';
Future<void> init()async {
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.BASE_URL  ));

  //repos
  Get.lazyPut(() => PopularPorductRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => PoppularProductController(popularPorductRepo: Get.find()));

}