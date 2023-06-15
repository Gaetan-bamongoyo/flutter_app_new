import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                Container(
                  height: screenHeight * 0.15,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Colors.black, style: BorderStyle.solid)),
                  child: LayoutBuilder(builder: (context, constraints) {
                    var maxHeight = constraints.minHeight;
                    var maxWidth = constraints.maxWidth;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          leading: Image.asset(
                        "assets/images/image2.jpg",
                        height: screenHeight * 0.5,
                        width: screenWidth * 0.2,
                        fit: BoxFit.contain,
                      )
                          // Container(
                          //   height: maxHeight,
                          //   width: maxWidth * 0.2,
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(12),
                          //       border: Border.all(
                          //           color: Colors.black, style: BorderStyle.solid)),
                          // ),
                          ),
                    );
                  }),
                )
              ],
            ),
          ),
        ));
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
