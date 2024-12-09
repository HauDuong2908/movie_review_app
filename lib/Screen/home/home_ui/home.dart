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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
                child: Column(
                  children: [
                    Tilte_Home(),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Films This Month',
                      style: TextStyle(
                          fontSize: 18,
                          color: constants.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Expanded(
                      child: List_View(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.41,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Films This Month',
                      style: TextStyle(
                          fontSize: 18,
                          color: constants.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Listview_Stack(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Friends Is Review',
                      style: TextStyle(
                          fontSize: 18,
                          color: constants.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: SizedBox(
                        height: size.height * 0.8,
                        child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Container(
                                      height: size.height * 0.2,
                                      width: size.width * 1,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: constants.gray),
                                      child: Column(
                                        children: [],
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
