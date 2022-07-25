import 'package:flutter/material.dart';

class MenuLeft extends StatefulWidget {
  const MenuLeft({Key? key}) : super(key: key);
  @override
  State<MenuLeft> createState() => _MenuLeftState();
}
class _MenuLeftState extends State<MenuLeft> {

  List<MenuItem> menuItems =[];

  @override
  void initState(){
    menuItems.addAll([
      MenuItem(icon: Icons.toc, itemName: 'Sự cố'),
      MenuItem(icon: Icons.feed, itemName: 'Báo cáo'),
      MenuItem(icon: Icons.security, itemName: 'Đổi mật khẩu'),
      MenuItem(icon: Icons.text_snippet, itemName: 'Điều khoản'),
      MenuItem(icon: Icons.contacts, itemName: 'Liên hệ '),
      MenuItem(icon: Icons.logout, itemName: 'Đăng xuất'),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          children: [
             DrawerHeader(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 10,
                        left: 0,
                        child: Row(

                          children:  [
                            const CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage('assets/images/vy3.jpg'),
                            ),
                            Container(width: 10,),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  const Text('Gia Minh',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 25)),
                                  Container(height: 3,),
                                  const Text('09 3333 8993',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 21)),
                              ],
                            )
                          ],
                        ))
                  ],
                ),
             ),
            ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              shrinkWrap: true,
              itemCount: menuItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                    children:[
                      Icon(menuItems[index].icon),
                      TextButton(onPressed: (){ print('navigator.${menuItems[index].itemName}');}, child: Text(menuItems[index].itemName, style: const TextStyle(color: Colors.black, fontSize: 16),))
                    ],
                );
              },  separatorBuilder: (BuildContext context, int index) => const Divider(height: 1),

            )
          ],
        )
      ),
    );
  }
}

class MenuItem{
  final IconData icon;
  final String itemName;

  MenuItem({ required this.icon, required this.itemName });
}
