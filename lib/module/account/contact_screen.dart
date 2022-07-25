import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helper/keyboard.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Liên hệ'),
          centerTitle: true,
        ),
      body: GestureDetector(
        onTap: () {
          hideKeyboardAndUnfocus(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            infor(),
            listAction(),
            Container(height: 20,),
            formRequest()
          ],
        ),
      ),
    );
  }
}

Widget infor(){
  return
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: 'Địa chỉ: ',style: TextStyle(color: Color(0xFF000000),fontWeight: FontWeight.w700)),
                TextSpan(text: 'Vietnam',
                    style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          Container(height: 4,),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: 'Hotline: ',style: TextStyle(color: Color(0xFF000000),fontWeight: FontWeight.w700)),
                TextSpan(text: '09 3333 8993',
                    style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          Container(height: 4,),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: 'Email: ',style: TextStyle(color: Color(0xFF000000),fontWeight: FontWeight.w700)),
                TextSpan(text: 'giaminh95@gmail.com',
                    style: TextStyle(color: Colors.black)),
              ],
            ),
          )
        ],
      ),
    );
}
Widget listAction(){
  return Container(
    alignment: Alignment.center,
    decoration:  const BoxDecoration(
      border: Border(
        top: BorderSide(width: 1, color: Colors.grey),
        bottom: BorderSide(width: 1, color: Colors.grey),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                TextButton(onPressed: (){}, child: const Text('Gửi Email',style: TextStyle(color: Colors.black),))
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(width: 1, color: Colors.grey),
                right: BorderSide(width: 1, color: Colors.grey),
              ),

            ),
            child: Column(
              children: [
                const Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                TextButton(onPressed: (){}, child: const Text('Gọi điện',style: TextStyle(color: Colors.black)))
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                const Icon(
                  Icons.chat,
                  color: Colors.blue,
                ),
                TextButton(onPressed: (){}, child: const Text('Chat',style: TextStyle(color: Colors.black)))
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget formRequest(){
  final _formKey = GlobalKey<FormState>();
  return Form(
    key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Nội dung phản hồi'),
            Container(height: 5,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Conform password is required please enter';
                }
              },
            ),

            Container(height: 20,),
            Container(
              alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: (){
                        if (_formKey.currentState!.validate()) {
                          print('thành công');
                        }

                      },
                      child: const Text('GỬI',style: TextStyle(fontSize: 18),)
                  ),
                )
            )
          ],
        ),
      )
      );
}
