import 'package:dz_ambulance/colors/color.dart';
import 'package:flutter/material.dart';
import 'institutions/hotels/hotels.dart';
import 'exeple_of_service.dart';

class ServiseNumbers extends StatelessWidget {
  const ServiseNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsForApp.white,
      appBar: AppBar(
        foregroundColor: ColorsForApp.blue,
        shadowColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Телефон служб',
          style: TextStyle(
              color: ColorsForApp.black,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          shrinkWrap: true,
          children: [
            ...listOfExeoleForService.map((element) => element).toList(),
            const Hotels(),
          ],
        ),
      ),
    );
  }
}
