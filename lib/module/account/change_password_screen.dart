import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../helper/keyboard.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  String _password = '';
  String _confirmPassword = '';

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: (){},
          child: Ink.image(image: const AssetImage('assets/images/arrow-left-white.png')),
        ),
        title: const Text('Đổi Mật Khẩu'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: (){
          hideKeyboardAndUnfocus(context);
        },
        child:  Form(
          key: _formKey,
          child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(height: 30,),
                      TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            fillColor: Colors.white70,
                            filled: true,
                            labelText: 'Mật khẩu cũ',

                        ),

                      ),
                      Container(height: 13,),
                      TextFormField(
                        onChanged: (value){
                          _password = value;
                        },
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return 'Password is required please enter';
                          }
                          // you can check password length and specifications

                          return null;
                        },
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            fillColor: Colors.white70,
                            filled: true,
                            labelText: 'Mật khẩu mới',

                        ),
                      ),
                      Container(height: 13,),
                      TextFormField(
                        onChanged: (value){
                          _confirmPassword = value;
                        },
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return 'Conform password is required please enter';
                          }
                          if(value != _password){
                            return 'Confirm password not matching';
                          }
                          return null;
                        },

                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            fillColor: Colors.white70,
                            filled: true,
                            labelText: 'Nhập lại mật khẩu mới',
                        ),
                      ),

                      Container(height: 25,),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        if (_formKey.currentState!.validate()) {
                         print('thành công');
                        }
                      },
                      child: const Text('Lưu'),
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }

}
Widget avatar(){
  return  Stack(
      children:    const [
        CircleAvatar(
          radius: 64,
          backgroundImage: AssetImage('assets/images/vy3.jpg'),
        ),
        Positioned(
          bottom: 5,
          right: 0,
          child:  InkWell(
            child:  Icon(
              size:30,
              color:Colors.blue,
              Icons.photo_camera,
            ),
          ),
        )
      ]);
}



