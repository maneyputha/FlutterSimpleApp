import 'package:flutter/material.dart';
import 'package:sample/Enums/enums.dart';
import 'package:sample/Screens/Home/home_screen.dart';
import 'package:sample/Screens/Profile/profile.dart';
import 'package:sample/Screens/Splash/splash_screen.dart';

class SideNav extends StatefulWidget {
  final String page;

  const SideNav({Key? key, this.page = ''}) : super(key: key);

  @override
  _SideNavState createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/yosemetie.jpeg'))),
          ),
          loadHomeButton(widget.page),
          loadProfileButton(widget.page),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => {
              // remove drawer
              Navigator.of(context).pop(),

              // navigate to splash screen
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {
              // remove drawer
              Navigator.of(context).pop(),

              // navigate to splash screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
              )
            },
          ),
        ],
      ),
    );
  }

  //Given the clicked page loads page with formating and decoration.
  ListTile loadHomeButton(String page) {
    if (widget.page == Screens.home.toString()) {
      return ListTile(
        key: const Key("homeButton"),
        leading: const Icon(Icons.home, color: Colors.blue),
        title: const Text('Home',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
        onTap: () => {
          // remove drawer
          Navigator.of(context).pop(),
        },
      );
    } else {
      return ListTile(
        key: const Key("homeButton"),
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        onTap: () => {
          // remove drawer
          Navigator.of(context).pop(),

          // navigate to splash screen
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()))
        },
      );
    }
  }

  ListTile loadProfileButton(String page) {
    if (widget.page == Screens.profile.toString()) {
      return ListTile(
        key: const Key("profileButton"),
        leading: const Icon(Icons.verified_user, color: Colors.blue),
        title: const Text('Profile',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
        onTap: () => {
          // remove drawer
          Navigator.of(context).pop(),
        },
      );
    } else {
      return ListTile(
        key: const Key("profileButton"),
        leading: const Icon(Icons.verified_user),
        title: const Text('Profile'),
        onTap: () => {
          // remove drawer
          Navigator.of(context).pop(),

          // navigate to splash screen
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProfileScreen()))
        },
      );
    }
  }
}
