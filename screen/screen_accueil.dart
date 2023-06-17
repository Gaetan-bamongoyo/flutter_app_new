import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:programmation/flutter_app_new/model/posts.dart';
import 'package:programmation/flutter_app_new/screen/screen_detail_post.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(
                    screenHeight: screenHeight, screenWidth: screenWidth),
                const SizedBox(
                  height: 10,
                ),
                TitreAppWidget(screenWidth: screenWidth),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: posts.map((e) {
                    return ListPostWidget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      post: e,
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ));
  }
}

class ListPostWidget extends StatelessWidget {
  const ListPostWidget(
      {Key? key,
      required this.screenHeight,
      required this.screenWidth,
      required this.post})
      : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final Posts post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return DetailPost(image: post.image,);
          })));
        },
        child: Container(
            height: screenHeight * 0.15,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border:
                    Border.all(color: Colors.black, style: BorderStyle.solid)),
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      post.image,
                      height: screenHeight * 0.15,
                      width: screenWidth * 0.25,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: screenHeight * 0.15,
                      width: screenWidth * 0.35,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.description,
                            maxLines: 2,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontFamily: 'roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            post.date,
                            style: TextStyle(
                              fontFamily: 'roboto',
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.bell,
                          color: Colors.black,
                          size: 15,
                        ))
                  ],
                ))),
      ),
    );
  }
}

class TitreAppWidget extends StatelessWidget {
  const TitreAppWidget({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "App new politico",
            style: TextStyle(
                fontFamily: 'roboto', color: Colors.black, fontSize: 20),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Pour information",
            style: TextStyle(
                fontFamily: 'roboto',
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: screenWidth * 0.8,
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: FaIcon(
                    FontAwesomeIcons.search,
                    color: Colors.black54,
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Pres de toi",
            style: TextStyle(
                fontFamily: 'roboto',
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.05,
      width: screenWidth,
      child: LayoutBuilder(builder: (context, constraints) {
        var maxHeight = constraints.maxHeight;
        var maxWidth = constraints.maxWidth;
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.bars,
                    color: Colors.black,
                    size: 20,
                  )),
              Container(
                height: maxHeight,
                width: maxWidth * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid)),
                child: Center(
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.bell,
                      color: Colors.black,
                      size: 16,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
