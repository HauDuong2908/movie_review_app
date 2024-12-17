import 'package:flutter/material.dart';

import '../../../../Models/Models.dart';

class List_View extends StatelessWidget {
  const List_View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: constants.white),
            child: const Text(
              "ListView 1",
              style: TextStyle(fontSize: 32, color: Colors.red),
            ),
          ),
        );
      },
    );
  }
}
