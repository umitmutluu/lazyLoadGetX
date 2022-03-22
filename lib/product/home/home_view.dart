import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazyloadgetx/product/home/home_controller.dart';

class HomeView extends GetView<HomeViewController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(init: HomeViewController(),
      builder:(builder) {
      final ScrollController scrollController =ScrollController();
      scrollController.addListener(() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent &&
            controller.listCount.value <=
                controller.model!.data!.length){

        }
      });
        return ListView.builder(
        controller: scrollController,
        itemCount: controller.listCount.value,
          itemBuilder: (context , indext)=>ListTile());
      },
    );
  }
}
