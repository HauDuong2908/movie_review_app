import 'package:flutter/material.dart';
import '../../main_home.dart';

class Listview_Stack extends StatelessWidget {
  const Listview_Stack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
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
                    width: 86,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
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
