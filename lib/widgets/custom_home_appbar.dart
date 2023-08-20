import 'package:flutter/material.dart';

import '../constants/couleurs.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/logo-baniere.png', height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // call button
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        color: secondGreenColor,
                        size: 22,
                      ),
                      SizedBox(width: 5,),
                      contact,
                    ],
                  ),
                  const SizedBox(width: 20,),
                  //mail button
                  GestureDetector(
                    onTap: (){
                      // mailto
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail,
                          color: secondGreenColor,
                          size: 22,
                        ),
                        SizedBox(width: 5,),
                        mail,
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
