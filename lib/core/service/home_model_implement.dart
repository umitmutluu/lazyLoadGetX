
import 'package:dio/dio.dart';
import 'package:lazyloadgetx/product/home/home_Model/home_model.dart';

abstract class IHomeModelService{
  late final Dio homeModelManager;

  IHomeModelService({required this.homeModelManager});


  Future<List<HomeModel>> fetchHomeModelData({int size=0});
}