import 'package:flutter/material.dart';

import '../../../../Models/Models.dart';

class List_View extends StatelessWidget {
  const List_View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Constants constants = Constants();
    return SizedBox(
      height: size.height * 0.2,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: size.height * 0.17,
                    width: size.width * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: constants.white),
                    child: const Text(
                      "ListView 1",
                      style: TextStyle(fontSize: 32, color: Colors.white),
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
