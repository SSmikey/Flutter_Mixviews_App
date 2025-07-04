import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My list views app"),
          backgroundColor: Colors.deepOrangeAccent,
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
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepOrangeAccent.withOpacity(0.2),
                                    blurRadius: 6,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Grid ${index + 1}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
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
                                // สามารถเพิ่ม action เมื่อกดแต่ละรายการได้ที่นี่
                              },
                            ),
                          );
                        }
                      ),
                    ),
                  ],
                ),
        // ...existing code...        // body: ListView.builder(
        //   itemCount: 100,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //       elevation: 4,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(16),
        //       ),
        //       child: ListTile(
        //         leading: CircleAvatar(
        //           backgroundColor: Colors.deepOrangeAccent,
        //           child: Text(
        //             '${index + 1}',
        //             style: const TextStyle(color: Colors.white),
        //           ),
        //         ),
        //         title: Text('รายการที่ ${index + 1}'),
        //         subtitle: Text('รายละเอียดของรายการที่ ${index + 1}'),
        //         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.deepOrangeAccent),
        //         onTap: () {
        //           // สามารถเพิ่ม action เมื่อกดแต่ละรายการได้ที่นี่
        //         },
        //       ),
        //     );
        //   }
        // ),
      ),
    );
  }
}
