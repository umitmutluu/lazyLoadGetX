import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazyloadgetx/product/home/home_controller.dart';
import 'package:lazyloadgetx/product/home/home_model/home_model.dart';

class HomeView extends GetView<HomeViewController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeViewController(),
      builder: (builder) {
        final ScrollController scrollController = ScrollController();
        scrollController.addListener(() {
          if (scrollController.position.pixels >=
                  scrollController.position.maxScrollExtent &&
              controller.listSize.value <= controller.model!.data!.length) {
            controller.listSize += 5;
            controller.fetchData();
          }
        });
        return ListView.builder(
            controller: scrollController,
            itemCount: controller.listSize.value,
            itemBuilder: (context, index) {
              if (controller.model!=null) {
                HomeModel model =controller.model as HomeModel;
              }
              return ListTile(title: Text(controller.model!.data![index].firstName??''));
            });
      },
    );
  }
}
