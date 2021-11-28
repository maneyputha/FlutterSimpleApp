import 'package:flutter/material.dart';

import 'card_item.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late ScrollController controller;
  List<String> items = [];

  @override
  void initState() {
    super.initState();
    loadData();
    controller = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: ListView.builder(
          key: const Key('homeScroller'),
          controller: controller,
          itemBuilder: (context, index) {
            // return Text(items[index]);

            return CardItem(url: items[index]);
          },
          itemCount: items.length,
        ),
      ),
    );
  }

  void loadData() {
    items.addAll(List.generate(10, (index) => 'assets/images/logo.png'));
  }

  void _scrollListener() {
    // print(controller.position.extentAfter);
    if (controller.position.extentAfter < 500) {
      setState(() {
        items.add('assets/images/logo.png');
        // items.addAll(List.generate(42, (index) => 'Inserted $index'));
      });
    }
  }
}
