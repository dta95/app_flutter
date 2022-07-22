import 'dart:async';
import 'package:flutter/material.dart';

class CardGame extends StatefulWidget {
  const CardGame({Key? key}) : super(key: key);
  @override
  State<CardGame> createState() => _CardGameState();
}
class _CardGameState extends State<CardGame> {

int count =0;
List<Item> items=[];
List<String>  isCheck =[];

@override
  void initState(){
      items.addAll([
        Item(code: 'dog', image: 'assets/images/dog1.jpg'),
        Item(code: 'dog', image: 'assets/images/dog2.jpg'),
        Item(code: 'dog', image: 'assets/images/dog3.jpg'),
        Item(code: 'meo', image: 'assets/images/meo1.jpg'),
        Item(code: 'meo', image: 'assets/images/meo2.jpg'),
        Item(code: 'meo', image: 'assets/images/meo3.jpg'),
        Item(code: 'gau', image: 'assets/images/gau1.jpg'),
        Item(code: 'gau', image: 'assets/images/gau2.jpg'),
        Item(code: 'gau', image: 'assets/images/gau3.jpg'),
        Item(code: 'vyz', image: 'assets/images/vy1.jpg'),
        Item(code: 'vyz', image: 'assets/images/vy3.jpg'),
        Item(code: 'vyz', image: 'assets/images/vy2.jpg'),
      ]);
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Game'),
        ),
      body: Column(

        children: [
          Container(height: 50,),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                child:  GridView.builder(
                  itemCount: 12,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0
                  ),
                  itemBuilder: (BuildContext context, int index){
                   return InkWell(
                        onTap: items[index].showImage
                            ? null: () async{
                                  setState(() {
                                    items[index].showImage = true;
                                    isCheck.add(items[index].code);
                                    count++;
                                  });
                                  if(checkPlay(count)==false){
                                      await Future.delayed(const Duration(milliseconds: 500));
                                      setState(() {
                                      _resetPlay();
                                      });
                                  }
                              },
                     child:   AnimatedSwitcher(
                       duration: const Duration(milliseconds: 4000),
                       child: items[index].showImage ?itemShow(items[index].image):
                       itemHide(),
                     )
                   );
                  },
                )),
          ),
          TextButton(
              style:  ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),

              ),
              onPressed: (){
                  setState(() {
                    _resetGame();
                  },
                  );
              },
              child: const Text('Reset',style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }

void  _resetPlay() {
  for(int i=0;i<items.length;i++){
    items[i].showImage=false;
  }
  isCheck = [];
  count = 0;
}
void _resetGame() {
  for(int i=0;i<items.length;i++){
    items[i].showImage=false;
  }
  items.shuffle();
  isCheck = [];
  count = 0;
}
bool checkPlay(int count){
  if(count<=3){
    for(int i=1;i<count;i++){
      if(isCheck[i]!=isCheck[i-1]){
        return false;
      }
    }
  }
  if(count>3&&count <=6) {
    for (int i = 4; i < count; i++) {
      if (isCheck[i] != isCheck[i - 1]) {
        return false;
      }
    }
  }
  if(count>6&&count <=9) {
    for (int i = 7; i < count; i++) {
      if (isCheck[i] != isCheck[i - 1]) {
        return false;
      }
    }
  }
  if(count>9&&count <=12) {
    for (int i = 10; i < count; i++) {
      if (isCheck[i] != isCheck[i - 1]) {
        return false;
      }
    }
  }
  return true;
}
}
class Item{
  final String code ;
  final String image;
  bool showImage = false;
  Item({required this.code, required this.image});
}
Widget itemShow( String image){
  return
    Container(
        height: 100,
        width: 100,
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            ))
  );

}
Widget itemHide(){
  return   Container(
    height: 100,
    width: 100,
    decoration:  BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Icon(
      IconData(0xf00c1, fontFamily: 'MaterialIcons')
    )
    );
}

