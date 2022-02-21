import 'package:flutter/material.dart';
import 'package:hotel/theme/theme.dart';
import 'package:hotel/widget/cardSecondpage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Transform.scale(
          scale: 0.6,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        body: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Image.asset('asset/image new.png'),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                            ),
                            contentTitle(),
                            listCard(),
                            descriptionText()
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomNav(),
      ),
    );
  }

  Widget descriptionText() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: titleCardHomePage,
          ),
          Text(
            "Luxury homes at affordable prices with Bandung's hilly atmosphere Located in a strategic location, flood free",
            style: secondSubHomePage,
          )
        ],
      ),
    );
  }

  Widget listCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24.0, left: 24.0),
          child: Text(
            'House Facilities',
            style: secondTitleHomePage,
          ),
        ),
        Container(
          height: 170.0,
          color: Colors.white,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  SecondCardHotel(
                    imageUrl: 'asset/image 4.png',
                    title: 'Swimming Pool',
                  ),
                  SecondCardHotel(
                    imageUrl: 'asset/image 42.png',
                    title: '4 Bed Room',
                  ),
                  SecondCardHotel(
                    imageUrl: 'asset/image 43.png',
                    title: 'Garage',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget bottomNav() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(3.0, 6.0),
            blurRadius: 20,
                //spreadRadius: 1.0,
                color: Colors.grey,
          )
        ]
      ),
      
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text('Price', style: secondSubHomePage,),
                subtitle: Text('\$70000', style:textBottomNav ,),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              child: Text('Chechout'),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(196, 50),
                  primary: Color(0xffF3C41E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            )

            // Expanded(
            //     child: MaterialButton(
            //   onPressed: () {},
            //   color: Color(0xffF3C41E),
            //   child: Text(
            //     'data',
            //     style: buttonBottomNav,
            //   ),
            // ))
          ],
        ),
      ),
    );
  }

  Widget contentTitle() {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          )),
      child: Padding(
        padding: const EdgeInsets.only(right: 24.0, left: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Modern House\n',
                        style: secondTitleHomePage,
                      ),
                      TextSpan(
                        text: 'Modern House',
                        style: secondSubHomePage,
                      ),
                    ]),
                  ),
                  Image.asset(
                    'asset/Ratings.png',
                    //'asset/Ratings.png',
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Listing Agent',
                style: secondTitleHomePage,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'asset/Pas Fot.png',
                    height: 50,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'Alwiros\n', style: secondsubTextCard),
                        TextSpan(text: 'House Owner', style: secondTextCard)
                      ],
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'asset/Call.png',
                    height: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'asset/Messange.png',
                    height: 50,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
