import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categorieName}) async {
    List<dynamic> data = await Api()
        // ignore: missing_required_param
        .get(url: 'https://fakestoreapi.com/products/category/$categorieName');

    List<ProductModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
