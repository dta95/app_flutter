import 'package:flutter/material.dart';
import '../../helper/keyboard.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: (){
            hideKeyboardAndUnfocus(context);
          },
          child: Column(
            children: [
              Container(height: 50,),
              Container(
                  alignment: Alignment.bottomLeft,
                  child:  IconButton(
                    icon: Image.asset('assets/images/arrow-left.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 0),
                          height: 200,
                          width: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/logostarcityvang.png'),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              labelText: 'Số Điện Thoại',
                            ),
                          ),
                          Container(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              labelText: 'Tên Đăng Nhập',
                            ),
                          ),

                          Container(height: 10),
                          TextField(
                            obscureText: _isObscure,
                            obscuringCharacter: "*",
                            decoration:  InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),


                                fillColor: Colors.white70,
                                filled: true,
                                labelText: 'Mật Khẩu',
                                suffixIcon: IconButton(
                                    icon: Icon(
                                        _isObscure ? Icons.visibility : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    })
                            ),
                          ),
                          Container(height: 15),
                          Row(
                            children: [
                              const Spacer(),
                              Container(
                                  height: 50,
                                  width: 150,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: const Color(0xFF2D8076),
                                  ),
                                  child: TextButton(
                                    onPressed: () {  Navigator.pop(context); },
                                    child: const Text('Đăng Nhập',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white)
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Hotline',
                      style: TextStyle(color: Color(0xFF000000),),
                      children: [
                        TextSpan(text: ' '),
                        TextSpan(text: '0933338993', style: TextStyle(color: Color(0xFF2D8076))),
                      ],
                    ),
                  )
              ),
              const SizedBox(height: 10,)
            ],
          ),
        )
    );
  }
}


