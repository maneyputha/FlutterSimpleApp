import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Enums/enums.dart';
import 'package:sample/Screens/SideNav/side_nav_screen.dart';

import 'components/body.dart';

/**
 * Home screen stateful widget
 * Stateful widgets will load dynamic data.
 */
class HomeScreen extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            key: _scaffoldKey,
            //Sets the drawer at the end or the right side.
            endDrawer: SideNav(page: Screens.home.toString()),
            appBar: AppBar(
                title: const Text("Demo App"),
                actions: <Widget>[
                  IconButton(
                    key: const Key('drawerClick'),
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      //open drawer at the end given the button press.
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  )
                ],
                centerTitle: true,
                automaticallyImplyLeading: false),
            body: const Body()));
  }
}
