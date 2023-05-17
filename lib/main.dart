import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ninjaId(),
    );
  }
}

// ignore: camel_case_types
class ninjaId extends StatelessWidget {
  const ninjaId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          "Ninja ID Card",
          style: TextStyle(fontFamily: "handwrt"),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 60,
              backgroundImage: AssetImage("assets/img/me.jpg"),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5, 20, 0, 20),
              alignment: Alignment.topLeft,
              child: const Text(
                "Name",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Hakim ben Hadj brahim",
                style: TextStyle(
                    fontSize: 23, color: Colors.amber, fontFamily: "handwrt"),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.fromLTRB(5, 20, 0, 20),
              child: const Text(
                "CURERENT NINJA LEVEL",
                style: TextStyle(fontSize: 23, color: Colors.grey),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "99999",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.amber,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                Text(
                  "Bhbhakim001@gmail.com",
                  style: TextStyle(
                      color: Colors.white, fontSize: 22, fontFamily: "handwrt"),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/img/face.svg",
                  // ignore: deprecated_member_use
                  color: Colors.lightBlue,
                ),
                SvgPicture.asset(
                  "assets/img/insta.svg",
                  // ignore: deprecated_member_use
                  color: Colors.redAccent,
                  height: 33,
                ),
                SvgPicture.asset(
                  "assets/img/linkedin.svg",
                  // ignore: deprecated_member_use
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
