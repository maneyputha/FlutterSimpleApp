import 'package:flutter/material.dart';
import 'package:sample/Screens/Login/login_screen.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    _startupRoute();
    super.initState();
  }

  Future<void> _startupRoute() async {
    // Create storage
    final storage = new FlutterSecureStorage();
    // Read value
    String? accessToken = await storage.read(key: 'AccesToken');

    if (accessToken == null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(211, 211, 211, 25),
        body: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Column contents vertically,
          crossAxisAlignment:
              CrossAxisAlignment.center, //Center Column contents horizontally,
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment:
                  CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 20.0),
                            child: const Text("Sample App",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                        Image.asset('assets/images/logo.png')
                      ])),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                )
              ],
            ),
          ],
        )

        // Container(child: Image.asset('assets/images/logo.png'),)
        );
  }
}
