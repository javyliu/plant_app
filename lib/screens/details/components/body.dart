import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

import 'icon_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.8,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: defaultPadding * 3),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                            icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        Spacer(),
                        IconCard(icon: "assets/icons/sun.svg",),
                        IconCard(icon: "assets/icons/icon_2.svg",),
                        IconCard(icon: "assets/icons/icon_3.svg",),
                        IconCard(icon: "assets/icons/icon_4.svg",),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 60,
                        color: primaryColor.withOpacity(0.29),

                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/images/img.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft
                    )

                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

