import 'package:flutter/material.dart';

import '../../../../Models/Models.dart';

class PopularFilms extends StatelessWidget {
  const PopularFilms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return SizedBox(
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
    );
  }
}
