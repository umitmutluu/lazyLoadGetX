import 'package:dio/dio.dart';
import 'package:lazyloadgetx/core/routes/home_route.dart';
import 'package:lazyloadgetx/core/service/home_model_implement.dart';
import 'package:lazyloadgetx/product/home/home_Model/home_model.dart';
import 'package:lazyloadgetx/tools/exceptions/extension/home_parameter_extension.dart';

class HomeService extends IHomeModelService {
  HomeService(Dio manager) : super(homeModelManager: manager);

  @override
  Future<List<HomeModel>> fetchHomeModelData({int size = 0}) async {
    var response = await homeModelManager.get(HomeRoute.BASE.returnValue,
        queryParameters: Map.fromEntries([HomeQuerry.SIZE.pageQuery(size)]));

    if (response.data != null) {
      return response.data;
    }else{
      return [];
    }
  }
}
