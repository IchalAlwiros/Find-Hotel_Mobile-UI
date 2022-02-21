import 'package:flutter/material.dart';
import 'package:hotel/pages/secondpage.dart';
import 'package:hotel/theme/theme.dart';

class CardHotel extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String ratings;

  CardHotel({this.imageUrl, this.title, this.subtitle, this.ratings});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 30),
        child: Container(
          width: 200,
          margin: EdgeInsets.only(right: defaultMargin),
          //padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(3.0, 6.0),
                blurRadius: 8.0,
                //spreadRadius: 1.0,
              ),
            ],
          ),
          // child: Card(
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
          //   ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // add this

            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(imageUrl,
                    //'asset/image new.png',
                    // width: 300,
                    height: 110,
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 2, left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: cardTitleHomePage,
                          ),
                          TextSpan(
                            text: subtitle,
                            style: cardsubTitleHomePage,
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
                    Image.asset(
                      ratings,
                      //'asset/Ratings.png',
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
          // Spacer(),
          //       Text('asasd')
        ),
        // child: Column(
        //   children: [
        //     Image.asset(
        //       'asset/image 1.png',
        //       //fit: BoxFit.cover,
        //     ),
        //     Align(
        //       alignment: Alignment.bottomLeft,
        //       child: Text(
        //         'data',
        //         style: cardHomePage,
        //       ),
        //     ),
        //   ],
        // ),
      ),
      // ),
    );

//  GestureDetector(
//       child: Padding(
//         padding: const EdgeInsets.only(top: 30, bottom: 30),
//         child: Container(
//           width: 200,
//           margin: EdgeInsets.only(right: defaultMargin),
//           //padding: EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//               BoxShadow(
//                 offset: Offset(3.0, 6.0),
//                 blurRadius: 3.0,
//                 spreadRadius: 1.0,
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               Image.asset(
//                 'asset/image 1.png',
//                 //fit: BoxFit.cover,
//               ),
//               Align(
//                 alignment: Alignment.bottomLeft,
//                 child: Text(
//                   'data',
//                   style: cardHomePage,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );

    // GestureDetector(
    //   onTap: () {},
    //   child: Padding(
    //     padding: const EdgeInsets.only(top: 30, bottom: 30),
    //     child: Container(
    //       width: 200,
    //       margin: EdgeInsets.only(right: defaultMargin),
    //       padding: EdgeInsets.all(16),
    //       decoration: BoxDecoration(
    //         color: Colors.white,
    //         borderRadius: BorderRadius.circular(25),
    //         boxShadow: [
    //           BoxShadow(
    //             offset: Offset(3.0, 6.0),
    //             blurRadius: 3.0,
    //             spreadRadius: 1.0,
    //           ),
    //         ],

    //         // image: DecorationImage(
    //         //   image: AssetImage('asset/image new.png'),
    //         //   fit: BoxFit.cover,
    //         // ),
    //       ),

    //       // child: ClipRRect(
    //       //   borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
    //       //   child: Image.asset('asset/image new.png'),
    //       // ),
    //       // child: Align(
    //       //   alignment: Alignment.bottomLeft,
    //       //   child: Text('data',style: cardHomePage,),
    //       // ),
    //     ),
    //   ),
    // );
  }
}
