import 'Basic.dart';
import 'MyData.dart';
import 'Rating.dart';

void main(List<String> arguments) {
  
  int num = 1 ;
  List list =MyData.myList;

  list.forEach((element) {
    
     Basic basic = Basic.fromMap(element);
      print('Map num $num');
      print('Id : ${basic.id}');
      print('Title : ${basic.title}');
      print('Price : ${basic.price}');
      print('Description : ${basic.description}');
      print('Category : ${basic.category}');
      print('Image : ${basic.image}');
      print('Rating -> Rate : ${basic.rating?.rate}');
      print('Rating -> Count : ${basic.rating?.count}');
      print('ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ');
      num++ ;

  });

 Rating rate = Rating(rate: 3 , count: 3);
  Basic basic = Basic(id: 9 , title: 'myTitle' , price: 7.3 , description: 'this is description' ,
  category: 'this is category' , image: 'this is image' , rating: rate);

  Map basicMap = basic.toMap();
  print(basicMap['id']);

   Map ratingMap = rate.toMap();
  print(ratingMap['count']);
}
