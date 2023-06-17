import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPost extends StatelessWidget {
  const DetailPost({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                image,
                height: screenHeight * 0.5,
                width: screenWidth,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Positioned(
                    top: screenHeight * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.arrowLeft,
                              color: Colors.black,
                              size: 20,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.heart,
                              color: Colors.black,
                              size: 20,
                            )),
                      ],
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
