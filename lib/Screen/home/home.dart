import 'package:flutter/material.dart';
import '../../Models/Models.dart';
import '../../widgets/widgets.dart';
import '../drawer/slideMenu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: constants.black.withOpacity(1),
      drawer: SlideMenu(),
      appBar: AppBar(
        leading: IconDrawer(),
        backgroundColor: constants.black.withOpacity(1),
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 0,
        elevation: 0.0,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: size.width,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  child: Image.asset(
                    'assets/Logo1.png',
                    width: 40,
                    height: 40,
                  ),
                ),
              ]),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Kyran!',
              style:
                  TextStyle(fontSize: 35, color: constants.pink.withOpacity(1)),
            ),
            Text(
              'Review or track film you are watched...',
              style: TextStyle(fontSize: 13, color: constants.white),
            ),
          ],
        ),
      ),
    );
  }
}
