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
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.05,
              width: screenWidth,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black, style: BorderStyle.solid)),
              child: LayoutBuilder(builder: (context, constraints) {
                var maxHeight = constraints.maxHeight;
                var maxWidth = constraints.maxWidth;
                return Padding(
                  padding: const EdgeInsets.all(8),
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
                        width: maxWidth * 0.1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black, style: BorderStyle.solid)),
                        child: Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.bell,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
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
