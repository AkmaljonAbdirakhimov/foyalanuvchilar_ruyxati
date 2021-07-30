import 'package:flutter/material.dart';

import 'widgets/foydalanuvchi_qismi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "StyleScript",
      ),
      home: FoydalanuvchilarRuyxati(),
    );
  }
}

class FoydalanuvchilarRuyxati extends StatefulWidget {
  @override
  _FoydalanuvchilarRuyxatiState createState() =>
      _FoydalanuvchilarRuyxatiState();
}

class _FoydalanuvchilarRuyxatiState extends State<FoydalanuvchilarRuyxati> {
  List<Map<String, String>> foydalanuvchilar = [
    {
      "id": "user1",
      "ismi": "Ann Neal",
      "telefon": "401-479-2334",
      "rasmManzili":
          "https://images.unsplash.com/photo-1518526157563-b1ee37a05129?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    },
    {
      "id": "user2",
      "ismi": "Davron Kabulov",
      "telefon": "401-555-7000",
      "rasmManzili":
          "https://image.winudf.com/v2/image/Y29tLmthemJlay5kYXZyb25rYWJ1bG92X3NjcmVlbl8yX2Y0dzU2aWMw/screen-2.jpg?fakeurl=1&type=.jpg",
    },
    {
      "id": "user3",
      "ismi": "Eva Bergman",
      "telefon": "417-799-4004",
      "rasmManzili":
          "https://images.unsplash.com/photo-1627415418507-2bd7091799cb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
    },
    {
      "id": "user4",
      "ismi": "Lisa Oneil",
      "telefon": "420-555-5555",
      "rasmManzili":
          "https://images.unsplash.com/photo-1622495488655-498a6e9bb902?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80",
    },
  ];

  void foydalanuvchiniUchirish(String foydalanuvchiId) {
    setState(() {
      foydalanuvchilar.removeWhere((foydalanuvchi) {
        return foydalanuvchi["id"] == foydalanuvchiId;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Foyalanuvchilar ro'yxati"),
      // ),
      // SafeArea = Havfsiz Joy
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Foydalanuvchilar Ro'yxati",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // ulchamli bush quti
            SizedBox(
              height: 20,
            ),
            // Expanded = Column yoki Row ichida widgetlardan qolgan joyni boricha egallaydi
            Expanded(
              // ListView == Ro'yxat kurinishi
              child: ListView(
                itemExtent: 90,
                children: foydalanuvchilar.map((foydalanuvchi) {
                  return FoydalanuvchiQismi(
                    // ! = undov belgisi === men xato yoki qiymatimiz null bulishidan
                    // ogohlantirildim va men nima qilayotganimni bilaman
                    id: foydalanuvchi["id"]!,
                    ismi: foydalanuvchi["ismi"]!,
                    telefon: foydalanuvchi["telefon"]!,
                    rasmManzili: foydalanuvchi["rasmManzili"]!,
                    foydalanuvchiniUchirish: foydalanuvchiniUchirish,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
    );
  }
}
