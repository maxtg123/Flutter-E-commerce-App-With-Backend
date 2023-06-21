import 'package:ecom_backend/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularPorductRepo extends GetxService{
  final ApiClient apiClient;
  PopularPorductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
    return await apiClient.getData("AppConstants.POPULAR_PRODUCT_URI");


  }
}