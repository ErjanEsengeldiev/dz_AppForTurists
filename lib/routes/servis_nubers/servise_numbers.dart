import 'package:dz_ambulance/colors/color.dart';
import 'package:flutter/material.dart';

import 'institutions/embassy/embassy.dart';
import 'institutions/hotels/hotels.dart';
import 'institutions/medicin/medicine.dart';
import 'institutions/police/police.dart';
import 'institutions/transport/transport.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: const [
              Medicine(),
              Police(),
              Embssy(),
              Transport(),
              Hotels(),
            ],
          ),
        ),
      ),
    );
  }
}
