import 'package:flutter/material.dart';
import 'package:listview_app/AllImagesPage.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    final imageList = <String>[
      'assets/images/p1.jpg',
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
      home: Scaffold(
        appBar: AppBar(
          title: Text("My list views app"),
          backgroundColor: Colors.deepOrangeAccent,
          actions: [
            IconButton(
              icon: Icon(Icons.photo_library),
              tooltip: 'ดูรูปทั้งหมด',
              onPressed: () {
                Get.to(() => AllImagesPage(imageList: imageList));
              },
            ),
          ],
        ),
        // ...existing code...
                body: Column(
                  children: [
                    
                    // GridView Section
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
                          itemCount: 4,
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
                    // ListView Section
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
                                // สามารถเพิ่ม action เมื่อกดแต่ละรายการได้ที่นี่ 9vo
                              },
                            ),
                          );
                        }
                      ),
                    ),
                  ],
                ),
      ),
    );
  }
}
