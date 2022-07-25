import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../helper/keyboard.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: (){},
          child: Ink.image(image: const AssetImage('assets/images/arrow-left-white.png')),
        ),
        title: const Text('Tài Khoản'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: (){
          hideKeyboardAndUnfocus(context);
        },
        child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Column(
                children: [
                  avatar(),
                  Column(
                    children: [
                      Container(height: 30,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelText: 'Họ & tên',
                        ),
                        textCapitalization: TextCapitalization.words,
                      ),
                      Container(height: 13,),
                      TextField(
                        controller: dateinput, //editing controller of this TextField
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelText: 'Ngày sinh',
                        ),
                        readOnly: true,  //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context, initialDate: DateTime.now(),
                              firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101)
                          );

                          if(pickedDate != null ){
                            print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(formattedDate); //formatted date output using intl package =>  2021-03-16
                            //you can implement different kind of Date Format here according to your requirement

                            setState(() {
                              dateinput.text = formattedDate; //set output date to TextField value.
                            });
                          }else{
                            print("Date is not selected");
                          }
                        },
                      ),
                      Container(height: 13,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelText: 'Địa chỉ',
                        ),
                      ),
                      Container(height: 13,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelText: 'Số điện thoại',

                        ),
                        keyboardType: TextInputType.number,
                      ),
                      Container(height: 13,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelText: 'Email',
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
                      },
                      child: const Text('Lưu'),
                    ),
                  ),
                ],
              )

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



