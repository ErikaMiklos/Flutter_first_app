import 'package:first_app/config/global.params.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.yellow,
                        Colors.deepOrange
                      ]
                  )
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/logo.png'),
                      radius: 50,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/profile.jpg'),
                      radius: 50,
                    ),
                  ],
                ),
              )
          ),
          ...(GlobalParams.menus).map((item) {
              return Column(
                children: [
                  ListTile(
                    title: Text('${item['title']}', style: const TextStyle(fontSize: 22),),
                    leading: item['icon'],
                    trailing: const Icon(Icons.arrow_right, color: Colors.orange,),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, "${item['route']}");
                    }
                  ),
                  const Divider(color: Colors.deepOrange, height: 4,)
                ],
              );
          })
        ],
      ),
    );
  }
}