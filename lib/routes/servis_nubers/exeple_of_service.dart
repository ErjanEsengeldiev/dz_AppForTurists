import 'package:dz_ambulance/colors/color.dart';
import 'package:flutter/material.dart';

class ExeoleForServiceScreen extends StatelessWidget {
  final String navigationRoudName;
  final String nameOfColumn;
  final String imageRoud;
  final String title;
  const ExeoleForServiceScreen({
    required this.navigationRoudName,
    required this.nameOfColumn,
    required this.imageRoud,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nameOfColumn,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: ColorsForApp.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.pushNamed(context, navigationRoudName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage(imageRoud)),
                        const SizedBox(
                          width: 35,
                        ),
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: ColorsForApp.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Image(image: AssetImage('assets/images/Vector().png')),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'Единый телефон\nслужб',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<ExeoleForServiceScreen> listOfExeoleForService = const [
  ExeoleForServiceScreen(
      navigationRoudName: '/ambulanceCall',
      nameOfColumn: 'Медицина',
      imageRoud: 'assets/images/Vector().png',
      title: 'Единый телефон\nслужб'),
  ExeoleForServiceScreen(
      navigationRoudName: '/policeCall',
      nameOfColumn: 'Полиция',
      imageRoud: 'assets/images/Vector().png',
      title: 'Единый телефон\nслужб'),
  ExeoleForServiceScreen(
      navigationRoudName: '/embessycall',
      nameOfColumn: 'Посольство',
      imageRoud: 'assets/images/Vector().png',
      title: 'Единый телефон\nслужб'),
  ExeoleForServiceScreen(
      navigationRoudName: '/addTaxiDrivers',
      nameOfColumn: 'Транспорт',
      imageRoud: 'assets/images/Vector().png',
      title: 'Единый телефон\nслужб'),
];
