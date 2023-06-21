import 'package:ecom_backend/data/repository/popular_product_repo.dart';
import 'package:ecom_backend/models/products_model.dart';
import 'package:get/get.dart';

class PoppularProductController extends GetxController{
  final PopularPorductRepo popularPorductRepo;
  PoppularProductController({required this.popularPorductRepo});
  List<dynamic> _popularProductList=[];
  List<dynamic>get popularProductList => _popularProductList;
  bool _isLoaded = false;
  bool get isLoaded=> _isLoaded;


  Future<void> getPopularProductList()async {
    Response response= await popularPorductRepo.getPopularProductList();
    if(response.statusCode==200){
      print("got product");
       _popularProductList=[];
       _popularProductList.addAll(Product.fromJson(response.body).products);
      //  print(_popularProductList);
      _isLoaded=true;
       update(); 
    }
    else{
      
    }
  }
  
}