import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllImagesPage extends StatelessWidget {
  const AllImagesPage({super.key, required List<String> imageList});

  @override
  Widget build(BuildContext context) {
    // ตัวอย่างรายการรูปภาพ (สามารถแทนที่ด้วยข้อมูลจริง)
    final List<String> imageUrls = [
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Images'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1,
                ),
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'ย้อนกลับ',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}