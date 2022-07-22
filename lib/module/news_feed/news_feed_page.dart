import 'package:app_flutter/model/user.dart';
import 'package:flutter/cupertino.dart';

import '../../model/post.dart';

class NewsFeedPage extends StatefulWidget {
  const NewsFeedPage({Key? key}) : super(key: key);

  @override
  State<NewsFeedPage> createState() => _NewsFeedPageState();
}

class _NewsFeedPageState extends State<NewsFeedPage> {


  final post = <Post>[];

  @override
  void initState(){
    final user = User( avatar: 'Gia Minh', fullName: 'https://cafefcdn.com/thumb_w/650/203337114487263232/2022/3/3/photo1646280815645-1646280816151764748403.jpg');
    post.addAll([
    Post(creatDate: '10/1/2022', title: 'title1', content: 'content', status: 'status', photos: ['assets/images/gau1.jpg'], user: user),
    Post(creatDate: '11/4/2022', title: 'title2', content: 'content2', status: 'status2', photos: ['assets/images/dog2.jpg'], user: user),
    Post(creatDate: '14/4/2022', title: 'title3', content: 'content3', status: 'status3', photos: ['assets/images/meo3.jpg'], user: user)
    ]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
