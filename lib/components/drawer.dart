import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:listview_app/AllImagesPage.dart';
import 'package:listview_app/main.dart';

class MyDrawer extends StatefulWidget {
  final List<String> imageList;
  const MyDrawer({super.key, required this.imageList});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(color: Color.fromARGB(255, 163, 73, 0)),
        child: Text('Menu', style: TextStyle(fontSize: 30),),
      ),
      ListTile(
        title: const Text('Home'),
        leading: const Icon(Icons.home),
        onTap: () {
          Navigator.pop(context); // ปิด Drawer
           Get.offAllNamed('/');
        },
      ),
      ListTile(
        title: const Text('All images'),
        leading: const Icon(Icons.photo_library),
        onTap: () {
          Navigator.pop(context); // ปิด Drawer
         Get.toNamed('/allimages', arguments: []);
        },
      ),
    ],
  ),
);
  }
}                         