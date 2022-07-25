import 'package:app_flutter/module/login/register_screen.dart';
import 'package:flutter/material.dart';
import '../../helper/keyboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: () {
            hideKeyboardAndUnfocus(context);
          },
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 100),
                          height: 200,
                          width: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/logostarcityvang.png'),
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
                              labelText: 'Tên Đăng Nhập',
                            ),
                          ),
                          Container(height: 13),
                          TextField(
                            obscureText: _isObscure,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                fillColor: Colors.white70,
                                filled: true,
                                labelText: 'Mật Khẩu',
                                suffixIcon: IconButton(
                                    icon: Icon(
                                        _isObscure ? Icons.visibility : Icons
                                            .visibility_off),
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
                              Container(width: 30,),
                              TextButton(onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (
                                      context) => const RegisterScreen()),
                                );
                              },
                                  child: const Text('Đăng Ký', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,))),
                              const Spacer(),
                              Container(
                                height: 50,
                                width: 150,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: const Color(0xFF2D8076),
                                ),
                                child: const Text('Đăng Nhập', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),),
                              )
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
                    text: const TextSpan(
                      text: 'Hotline',
                      style: TextStyle(color: Color(0xFF000000),),
                      children: [
                        TextSpan(text: ' '),
                        TextSpan(text: '0933338993',
                            style: TextStyle(color: Color(0xFF2D8076))),
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




