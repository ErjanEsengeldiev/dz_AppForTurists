import 'package:dz_ambulance/colors/color.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 84),
          child: Column(
            children: listOfListTitle,
          ),
        ),
      ),
    );
  }
}

List<ExempleForListTile> listOfListTitle = const [
  ExempleForListTile(
    roudTiNavigate: '/serviseNumbers',
    leading: 'assets/images/Vector.png',
    firstTitle: 'Вы попали в трудную ситуацию?',
    secondTitle: "Телефон службы",
    trailing: IconForTrailing(),
  ),
  ExempleForListTile(
    roudTiNavigate: '',
    leading: 'assets/images/Vector (1).png',
    firstTitle: 'Тематически провести день?',
    secondTitle: "Маршруты прогулок",
    trailing: IconForTrailing(),
  ),
  ExempleForListTile(
    roudTiNavigate: '',
    leading: 'assets/images/Vector (2).png',
    firstTitle: 'Легко общаться с жителями?',
    secondTitle: "Выучите язык",
    trailing: IconForTrailing(),
  ),
  ExempleForListTile(
    roudTiNavigate: '',
    leading: 'assets/images/Vector (3).png',
    firstTitle: 'Хотите больше увидеть в России?',
    secondTitle: "Поездка по городам",
    trailing: IconForTrailing(),
  ),
  ExempleForListTile(
    roudTiNavigate: '',
    leading: 'assets/images/Vector (4).png',
    firstTitle: 'Нравится духовно развиваться?',
    secondTitle: "Музеи города",
    trailing: IconForTrailing(),
  ),
];

class ExempleForListTile extends StatelessWidget {
  final String roudTiNavigate;
  final String firstTitle;
  final String secondTitle;
  final String leading;
  final IconForTrailing trailing;
  const ExempleForListTile({
    required this.roudTiNavigate,
    required this.trailing,
    required this.leading,
    required this.firstTitle,
    required this.secondTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, roudTiNavigate);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
            color: ColorsForApp.blue, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          trailing: const IconForTrailing(),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                firstTitle,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
              Text(secondTitle,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ],
          ),
          leading: Image(
            image: AssetImage(leading),
          ),
        ),
      ),
    );
  }
}

class IconForTrailing extends StatelessWidget {
  const IconForTrailing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            width: 4,
            height: 4,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
          ),
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
          ),
        ],
      ),
    );
  }
}
