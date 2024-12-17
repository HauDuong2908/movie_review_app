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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Tilte_Home(),
              Text(
                'Popular Films This Month',
                style: TextStyle(
                    fontSize: 18,
                    color: constants.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 82,
                child: SizedBox(
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: constants.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    },
                    shrinkWrap: true,
                  ),
                ),
              ),
              Text(
                'Popular Films This Month',
                style: TextStyle(
                    fontSize: 18,
                    color: constants.white,
                    fontWeight: FontWeight.bold),
              ),
              const Listview_Stack(),
              Text(
                'Recent Friends Is Review',
                style: TextStyle(
                    fontSize: 18,
                    color: constants.white,
                    fontWeight: FontWeight.bold),
              ),
              const listviewReview()
            ],
          ),
        ),
      ),
    );
  }
}
