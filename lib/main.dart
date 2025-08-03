import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 145, 89, 241),
        ),
      ),
      title: 'Flutter Resume',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 238, 249),
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child: const Text(
            'My Resume',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0), // ให้เห็นชัดบนพื้นสีเข้ม
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 216, 238, 249),
      ),
      body: Padding(
        // เพิ่ม Padding รอบ Column
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('assets/img/muthita2.jpg'),
              ),
            ),
            const SizedBox(height: 18.0),
            Container(
              padding: const EdgeInsets.all(12.0),
              width: 300.0,
              height: 290.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 189, 233, 255),
                borderRadius: BorderRadius.circular(10.0),
                //border: Border.all(color: Colors.black, width: 1),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // จัดชิดด้านบนในแนวตั้ง
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // จัดชิดด้านบนในแนวตั้ง
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.person, color: Colors.blue, size: 20.0),
                      SizedBox(width: 8),
                      Text(
                        'นางสาวมุทิตา ปาละมี',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 2.0)),
                      Icon(
                        Icons.maps_home_work_rounded,
                        color: Colors.red,
                        size: 20.0,
                      ),
                      SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          "บ้านเลขที่ 80 หมู่ที่ 3 ตำบลหนองแรด อำเภอเทิง จังหวัดเชียงราย",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 2.0)),
                      Icon(Icons.headphones, color: Colors.green, size: 20.0),
                      SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'งานอดิเรก',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ฟังเพลง, ถ่ายภาพ, ดูหนัง',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 2.0)),
                      Icon(Icons.school, color: Color.fromARGB(255, 4, 17, 117), size: 20.0),
                      SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'การศึกษา:',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ประถมศึกษา: โรงเรียนหนองแรดวิทยา',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ปีการศึกษาที่จบ 2559',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            Text(
                              'มัธยมตอนต้น: โรงเรียนหนองแรดวิทยา',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ปีการศึกษาที่จบ 2562',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            Text(
                              'มัธยมตอนปลาย: โรงเรียนเทิงวิทยาคม',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ปีการศึกษาที่จบ 2565',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
