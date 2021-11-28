import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Enums/enums.dart';
import 'package:sample/Screens/SideNav/side_nav_screen.dart';

import 'components/body.dart';

class ProfileScreen extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        //Sets the drawer at the end or the right side.
        endDrawer: SideNav(page: Screens.profile.toString()),
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
        body: const Body());
  }
}
