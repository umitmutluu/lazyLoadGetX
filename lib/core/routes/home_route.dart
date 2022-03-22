import 'package:lazyloadgetx/tools/exceptions/HomeServiceException.dart';

enum HomeRoute{
  BASE,
  USERS
}


extension NetworkExtension on HomeRoute{
  String get returnValue{

    switch(this){
      case HomeRoute.BASE:
      return "https://reqres.in/api";
      case HomeRoute.USERS:
        return "/users";
      default:
        throw HomeServiceException();
    }
  }
}