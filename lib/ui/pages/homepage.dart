import 'package:flutter/material.dart';

import 'lib_pages.dart';

class HomePageHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              _Headers(),
              hotHotel(),
              cardCategory(),
            ],
          ),
        ),
      ),
    );
  }

  Widget hotHotel() {
    return Container(
      child: Column(
        children: [
          Container(
            height: 225,
            //color: Colors.red,
            child: ListView(
                padding: EdgeInsets.only(
                  left: 30,
                ),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      //NextPage()
                      CardHotel(
                        imageUrl: 'asset/image new.png',
                        title: 'Modern House',
                        subtitle: 'Kediri',
                        ratings: 'asset/Ratings.png',
                      ),
                      CardHotel(
                        imageUrl: 'asset/image 2.png',
                        title: 'White House',
                        subtitle: 'Kediri',
                        ratings: 'asset/Ratings.png',
                      ),
                      CardHotel(
                        imageUrl: 'asset/image new.png',
                        title: 'Modern House',
                        subtitle: 'Kediri',
                        ratings: 'asset/Ratings.png',
                      ),
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  Widget cardCategory() {
    return Container(
      //color: Colors.grey,
      padding: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommended For You',
            style: titleCardHomePage,
          ),
          SizedBox(
            height: 12,
          ),
          Column(
            children: [
              CardCategory(
                imageUrl: 'asset/Mask Group 2.png',
                title: 'D Wiros House',
                subtitle: 'Kediri',
                ratings: 'asset/Ratings.png',
              ),
              CardCategory(
                imageUrl: 'asset/Mask Group 3.png',
                title: 'D Adis House',
                subtitle: 'Kediri',
                ratings: 'asset/Ratings.png',
              ),
              CardCategory(
                imageUrl: 'asset/Mask Group.png',
                title: 'D Dikis House',
                subtitle: 'Kediri',
                ratings: 'asset/Ratings.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _Headers extends StatelessWidget {
  const _Headers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageIcon(AssetImage('asset/Nav.png')),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Find Your \nPerfect Place!',
                        style: titleHomePage,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                cursorColor: primaryColor,
                onChanged: (value) {},
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  fillColor: Colors.grey.withOpacity(0.1),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_rounded),
                  ),
                  hintText: 'Find your dream home',
                  hintStyle: inputHomePage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
