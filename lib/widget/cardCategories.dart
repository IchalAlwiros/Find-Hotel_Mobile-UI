import 'package:flutter/material.dart';
import 'package:hotel/ui/pages/secondpage.dart';
import 'package:hotel/theme/theme.dart';

class CardCategory extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subtitle;
  final String? ratings;

  CardCategory({this.imageUrl, this.title, this.subtitle, this.ratings});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Container(
        //margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                //offset: Offset(2.0, 3.0),
                blurRadius: 5.0,
                //spreadRadius: 1.0,
                color: Colors.grey,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Image.asset(
                imageUrl!,
                //'asset/Mask Group 2.png',
                width: 60,
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: cardTitleHomePage,
                  ),
                  Text(
                    subtitle!,
                    style: cardsubTitleHomePage,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Image.asset(
                    ratings!,
                    //'asset/Ratings.png',
                    height: 10,
                  )
                ],
              ),
              Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => SecondPage()));
                  },
                  child: Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
      ),
    );
  }
}
