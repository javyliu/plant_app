import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            country: "Russia",
            price: 440,
            name: "samantha",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            country: "Russia",
            price: 440,
            name: "samantha",
            press: () {
              print("hello");
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            country: "Russia",
            price: 440,
            name: "samantha",
            press: () {
              print("hello");
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            country: "Russia",
            price: 440,
            name: "samantha",
            press: () {
              print("hello");
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            country: "Russia",
            price: 440,
            name: "samantha",
            press: () {
              print("hello");
            },
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            country: "Russia",
            price: 440,
            name: "samantha",
            press: () {
              print("hello");
            },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard(
      {Key key, this.image, this.name, this.country, this.price, this.press})
      : super(key: key);

  final String image, name, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
          left: defaultPadding,
          top: defaultPadding / 2,
          bottom: defaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: primaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "$name\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                          text: country.toUpperCase(),
                          style:
                              TextStyle(color: primaryColor.withOpacity(0.5)))
                    ]),
                  ),
                  Spacer(),
                  Text('\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: primaryColor)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
