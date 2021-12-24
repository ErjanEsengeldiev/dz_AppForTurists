import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: Image(image: AssetImage('assets/images/image.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/sliderGid');
            },
          )
        ],
      ),
    );
  }
}
