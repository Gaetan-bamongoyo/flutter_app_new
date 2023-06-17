import 'package:flutter/material.dart';

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({Key? key}) : super(key: key);

  @override
  State<CalculatorWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Calculatrice simple',
          style: TextStyle(
              color: Colors.white, fontFamily: 'roboto', fontSize: 20),
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid)),
                child: const TextField(
                  // controller: ,
                  decoration: InputDecoration(
                    hintText: 'Valeur 1',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
