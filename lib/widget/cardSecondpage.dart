import 'package:flutter/material.dart';
import 'package:hotel/theme/theme.dart';

class SecondCardHotel extends StatelessWidget {
  final String title;
  final String imageUrl;

  SecondCardHotel({this.title, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
          width: 140,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(3.0, 6.0),
                  blurRadius: 8.0,
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  imageUrl,
                  //'asset/image 4.png',
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                // child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: secondCardText,
                      )
                    ],
                  ),
                ),
              //)
            ],
          ),
        ),
      ),
    );
  }
}
