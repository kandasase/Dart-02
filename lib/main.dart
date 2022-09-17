import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  /* หรือจะเขียนแบบนี้ก็ได้ แต่ดูยาวกว่า
  var app = MyApp();
  runApp(app);
  */
}

// สร้าง widget
class MyApp extends StatelessWidget {
  //widget ที่บ่มีการเปลี่ยนแปลงค่าดั้ย
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.brown),
    );
  }
}

//widget ที่มีการเปลี่ยนแปลงค่า
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("บัญชีของแมว"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            height: 80,
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(
                "รายรับ",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text("50,000฿",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right),
              ),
            ]),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(10)),
            height: 80,
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(
                "รายจ่าย",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text("100฿",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right),
              ),
            ]),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            height: 80,
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(
                "ยอดหนี้",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text("0฿",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right),
              ),
            ]),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            height: 100,
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(
                "ยอดคงเหลือ ",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text("49,000฿",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right),
              ),
            ]),
          ),
        ]),
      ),
    );
  }

  //เตรียมข้อมูล
  List<Widget> getData(int count) {
    //กลุ่มข้อมูล Text wiget
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      //ListTile ให้มันมีระยะห่าง
      var menu = ListTile(
        title: Text(
          "เมนูที่ ${i + 1}",
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text("หัวข้อย่อยที่ ${i + 1}"),
      );
      data.add(menu);
    }
    return data;
  }
}
