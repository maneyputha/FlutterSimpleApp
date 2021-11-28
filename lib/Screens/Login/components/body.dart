import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sample/Screens/Home/home_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
  }

  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: IntrinsicHeight(
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Column(children: [
            const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Demo App',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )),
            const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  key: Key('username'),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Username'),
                )),
            const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  key: Key('password'),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Password'),
                )),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(
                          40), // fromHeight use double.infinity as width and 40 is the height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: const Text('Login'),
                ))
          ]),
        ),
        // Expanded(child: Container(color: Colors.amber)),
      ])),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(10),
    );

    // Container(child: Image.asset('assets/images/logo.png'),)
  }
}
