import 'package:flutter/material.dart';
import '../../../Models/Models.dart';
import '../../../widgets/widgets.dart';
import '../../drawer/slideMenu.dart';
import '../main_home.dart';

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
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Tilte_Home(),
                SizedBox(height: size.height * 0.02),
                Text(
                  'Popular Films This Month',
                  style: TextStyle(fontSize: 14, color: constants.white),
                ),
                SizedBox(height: size.height * 0.02),
                List_View(),
                Text(
                  'Popular Films This Month',
                  style: TextStyle(fontSize: 14, color: constants.white),
                ),
                SizedBox(
                  height: size.height * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView.builder(
                      itemCount: Customlistview().movies.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final movie = Customlistview().movies[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: size.height * 0.35,
                                  width: size.width * 0.6,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: constants.white),
                                  child: Buildcard(
                                    title: movie['title'],
                                    author: movie['author'],
                                    imagePath: movie['image'],
                                    likes: movie['likes'],
                                    comments: movie['comments'],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
