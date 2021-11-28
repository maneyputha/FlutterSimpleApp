import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blue, Colors.white])),
                child: const Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Padding(
                        padding: EdgeInsets.fromLTRB(1.0, 200, 3.0, 4.0),
                        child: Body())))));
  }
}
