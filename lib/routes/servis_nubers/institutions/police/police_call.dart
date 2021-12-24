import 'package:dz_ambulance/colors/color.dart';
import 'package:flutter/material.dart';

class PoliceCall extends StatefulWidget {
  const PoliceCall({Key? key}) : super(key: key);

  @override
  State<PoliceCall> createState() => _PoliceCall();
}

class _PoliceCall extends State<PoliceCall> {
  IconData favoriteIcon = Icons.favorite_border;
  bool isFavorite = false;
  void changeFavoritIcon() {
    isFavorite == false ? isFavorite = true : isFavorite = false;
    isFavorite == true
        ? favoriteIcon = Icons.favorite
        : favoriteIcon = Icons.favorite_border;
    setState(() {});
  }

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
          'Карточка телефона',
          style: TextStyle(
            color: ColorsForApp.black,
            fontSize: 14,
          ),
        ),
        actions: [
          IconButton(
            splashRadius: 1,
            onPressed: changeFavoritIcon,
            icon: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                favoriteIcon,
                color: ColorsForApp.red,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Полиция',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              _Call(),
              SizedBox(
                height: 32,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et sed tempor, at magna purus quam sit id. Ut id aliquam molestie tortor, amet, suspendisse mi. Dictum viverra accumsan a proin amet. Amet, velit consequat enim urna, pellentesque in cursus auctor. Erat a, sapien, nisl id et. Egestas rhoncus, commodo convallis mauris.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.3,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Text(
                  'Причины вызова',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
              _Couse(),
              _Couse(),
              _Couse(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Couse extends StatelessWidget {
  const _Couse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorsForApp.black),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Причина 1',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class _Call extends StatelessWidget {
  const _Call({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '102',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 41),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: ColorsForApp.red,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: const Text(
            'ПОЗВОНИТЬ',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
