import 'package:flutter/material.dart';
import 'package:listview_app/AllImagesPage.dart';
import 'package:get/get.dart';
import 'package:listview_app/components/drawer.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    final imageList = <String>[
      'assets/images/p2.png',
      'assets/images/p3.jpg',
      'assets/images/p4.jpg',
      'assets/images/p5.jpg',
      'assets/images/p6.png',
      'assets/images/p7.png',
      'assets/images/p8.jpg',
      'assets/images/p9.jpg',
      'assets/images/p10.jpg',
      'assets/images/p11.jpg',
      'assets/images/p12.jpg',
      'assets/images/p13.png',
      'assets/images/p14.jpeg',
      'assets/images/p15.jpg',
      'assets/images/p16.jpg',
    ];

    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => MainApp(),
        ),
        GetPage(
          name: '/allimages',
          page: () => AllImagesPage(imageList: (Get.arguments as List).cast<String>()),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text("My list views app"),
          backgroundColor: Colors.deepOrangeAccent,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepOrangeAccent.withOpacity(0.15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                icon: const Icon(Icons.photo_library, color: Color.fromARGB(255, 0, 0, 0)),
                label: const Text(
                  'All images',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
                ),
                onPressed: () {
                  Get.toNamed('/allimages', arguments: imageList);
                },
              ),
            ),
          ],
        ),
        drawer: MyDrawer(imageList: imageList),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 180,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.deepOrangeAccent,
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text('รายการที่ ${index + 1}'),
                      subtitle: Text('รายละเอียดของรายการที่ ${index + 1}'),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.deepOrangeAccent),
                      onTap: () {
                        // สามารถเพิ่ม action เมื่อกดแต่ละรายการได้ที่นี่
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
