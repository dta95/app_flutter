import 'package:app_flutter/model/user.dart';

class Post{
  final String creatDate;
  final String title;
  final String content;
  final String status;
  final List<String> photos;
  final User user;
  Post({required  this.creatDate,required this.title,required this.content,required this.status,required this.photos, required this.user  });
}

