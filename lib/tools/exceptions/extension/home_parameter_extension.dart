enum HomeQuerry{
  SIZE
}

extension HomeQueryExtension on HomeQuerry{
  MapEntry<String,dynamic> pageQuery(int pageNumber)=> MapEntry("page", pageNumber);
}