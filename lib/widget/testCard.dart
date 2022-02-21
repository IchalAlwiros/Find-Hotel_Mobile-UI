// // import 'package:faker/faker.dart';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:hotel/model/modelCard.dart';


// class NextPage extends StatelessWidget {
//   //Faker faker = Faker();

//   @override
//   Widget build(BuildContext context) {
//     List<CardProduct> productdummy = List.generate(3, (index) {
//       return CardProduct(
//         judul: 'Test',
//         subtitle: 'Aww',
//         image: 'asset/image 1.png'
//       );
//     });
//     return SafeArea(
//       child: Scaffold(
//         body: GridView.builder(
//           padding: EdgeInsets.all(10),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
//           itemBuilder: (context, index) {
//             return  Container(
//                   color:Colors.red,
//                   child: Column(
//                     children: [
//                       Image.asset('asset/image 1.png',fit: BoxFit.cover,),
//                       Text(
//                         productdummy[index].subtitle,
//                         //style: styleText4,
//                         maxLines: 1,
//                       )
//                     ],
//                   ),
//                 );
//                 // footer: Container(
//                 //   decoration: BoxDecoration(
//                 //     color: Colors.white,
//                 //     borderRadius: BorderRadius.only(
//                 //       topLeft: Radius.circular(5),
//                 //       topRight: Radius.circular(5),
//                 //       bottomLeft: Radius.circular(0),
//                 //       bottomRight: Radius.circular(0)
//                 //     )
//                 //   ),
//                 //   height: 50,
//                 //   //color: Colors.orange,
//                 //   // alignment: Alignment.center,
//                 //   child: Column(
//                 //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 //     crossAxisAlignment: CrossAxisAlignment.start,
//                 //     children: [
//                 //       Text(
//                 //         productdummy[index].judul,
//                 //         //style: styleText4,
//                 //         maxLines: 1,
//                 //       ),
//                 //       Text(
//                 //         productdummy[index].subtitle,
//                 //         //style: styleText4,
//                 //         maxLines: 1,
//                 //       )
//                 //     ],
//                 //   ),
//                 // ),
                
//           },
//           itemCount: productdummy.length,
//         ),
//       ),
//     );
//   }
// }
