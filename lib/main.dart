import 'package:flutter/material.dart';

import 'Screens/Splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

// // hompage widget
// class HomeWidget extends StatelessWidget {

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: const Center(
//         child: Text(
//           "Demo App",
//           textAlign: TextAlign.center,
//         )),
//         actions: <Widget>[
//     IconButton(
//       icon: Icon(
//         Icons.menu,
//         color: Colors.black,
//       ),
//       onPressed: () {
//         // do something
//       },
//     )
//   ],),
//         // The following coloumn defines a column in the screen and helps us add new widgets to the view in a 
//         //column based structure. Furthermore you can use Rows instead of Columns.
//     body: SingleChildScrollView(
//       child: Column(children: <Widget>[ReusableWidget(), ReusableWidget(), ReusableWidget(), ReusableWidget()],),
//     )
    
//     );

//   }
// }


// class ReusableWidget extends StatelessWidget {

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     // return const Text('text');

//     return Card(
//           semanticContainer: true,
//           clipBehavior: Clip.antiAliasWithSaveLayer,
//           child: Column(
//                         children: [
//                           Image.network(
//             'https://placeimg.com/640/480/any',
//             fit: BoxFit.fill,
//           ),
//                           const Text("Some caption text")
//                         ]),
                          
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           elevation: 5,
//           margin: const EdgeInsets.all(10),
//         );
    

//   }
// }