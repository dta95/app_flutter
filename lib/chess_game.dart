import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChessGame extends StatefulWidget {
  const ChessGame({Key? key}) : super(key: key);
  @override
  State<ChessGame> createState() => _ChessGameState();
}
class _ChessGameState extends State<ChessGame> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Chess Game'),
        ),
      body: Column(
        children: [
          Expanded(
           child: Container(
             padding: const EdgeInsets.only(left: 10,top: 150,right: 10),
             alignment: Alignment.center,
             color: Colors.grey,
             child:  GridView.builder(
               itemCount: 81,
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 9,
                   crossAxisSpacing: 0,
                   mainAxisSpacing: 0
               ),
               itemBuilder: (BuildContext context, int index){
                 if(index%2==1){
                   return Container(
                     width: 10,
                     height: 10,
                     color: Colors.black,
                   );
                 }
                 return Container(
                   width: 10,
                   height: 10,
                   color: Colors.white,
                 );
               },
             )),
    ),
        ],
      ),
    );

  }
}
