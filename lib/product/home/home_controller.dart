import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazyloadgetx/core/service/home_model_implement.dart';
import 'package:lazyloadgetx/product/home/home_Model/home_model.dart';
import 'package:lazyloadgetx/product/home/home_service/home_service.dart';

class HomeViewController extends GetxController {

RxInt listSize=5.obs;
HomeModel? model;


HomeService homeService =HomeService(Dio());

  @override
  void onInit() async{


  }

  @override
  void onClose() {

  }

  @override
  void onReady() {

  }

fetchData()async{
  try {
    model= await homeService.fetchHomeModelData(size: listSize.value)as HomeModel;
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }
}

}
