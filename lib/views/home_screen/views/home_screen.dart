import 'package:flutter/material.dart';
import 'package:test_dua_pt_bionic/utils/constant.dart';
import 'package:test_dua_pt_bionic/views/contact_screen/views/add_contact_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Constant constant = Constant(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.login, size: 100),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(fontSize: Constant.fontBig),
                    ),
                  ],
                ),
                SizedBox(
                  height: constant.size.height * 0.050,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.map_sharp, size: 100),
                    ),
                    Text(
                      'Maps',
                      style: TextStyle(fontSize: Constant.fontBig),
                    ),
                  ],
                ),
                SizedBox(
                  height: constant.size.height * 0.050,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddContactScreen(),
                            ));
                      },
                      child: Icon(Icons.contact_page, size: 100),
                    ),
                    Text(
                      'Contact',
                      style: TextStyle(fontSize: Constant.fontBig),
                    ),
                  ],
                ),
                SizedBox(
                  height: constant.size.height * 0.050,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.camera_alt, size: 100),
                    ),
                    Text(
                      'Camera',
                      style: TextStyle(fontSize: Constant.fontBig),
                    ),
                  ],
                ),
                SizedBox(
                  height: constant.size.height * 0.050,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.account_tree_sharp, size: 100),
                    ),
                    Text(
                      'session/storage/cookies',
                      style: TextStyle(fontSize: Constant.fontBig),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
