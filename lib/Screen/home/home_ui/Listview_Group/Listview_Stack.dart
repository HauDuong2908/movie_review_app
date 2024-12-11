import 'package:flutter/material.dart';

import '../../../../Models/Models.dart';
import '../../main_home.dart';

class Listview_Stack extends StatelessWidget {
  const Listview_Stack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Constants constants = Constants();
    return SizedBox(
      height: size.height * 0.9,
      child: ListView.builder(
        itemCount: Customlistview().movies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final Map<String, dynamic> movie = Customlistview().movies[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: size.height * 0.35,
                    width: size.width * 0.46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: constants.black.withOpacity(1)),
                    child: Buildcard(
                      title: movie['title'],
                      author: movie['author'],
                      imagePath: List<String>.from(movie['image']),
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
    );
  }
}
