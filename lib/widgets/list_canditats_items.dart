import 'package:flutter/material.dart';

import '../constants/couleurs.dart';

class ListCandidatItems extends StatelessWidget {
  String imagePathCandidat;
  String firstNameCandidat;
  String lastNameCandidat;

  ListCandidatItems(
      {super.key,
      required this.imagePathCandidat,
      required this.firstNameCandidat,
      required this.lastNameCandidat});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // image
        CircleAvatar(
          backgroundImage: AssetImage(imagePathCandidat),
          radius: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lastNameCandidat,
              style: const TextStyle(
                color: grayColor,
                fontSize: 16,
              ),
            ),
            Text(
              firstNameCandidat,
              style: const TextStyle(
                color: grayColor,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
}
