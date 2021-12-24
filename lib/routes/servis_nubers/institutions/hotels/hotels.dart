import 'package:dz_ambulance/colors/color.dart';
import 'package:flutter/material.dart';

class Hotels extends StatelessWidget {
  const Hotels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Свои номера',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Builder(builder: (context) {
              return Row(
                children: [
                  InkWell(
                    splashColor: ColorsForApp.blue,
                    borderRadius: BorderRadius.circular(10),
                    onTap: (){},
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/border.png'),
                        ),
                        Icon(
                          Icons.add,
                          color: ColorsForApp.red,
                        ),
                      ],
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
                          Image(image: AssetImage('assets/images/hotel.png')),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            'Отель\nНевский',
                            style: TextStyle(
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
                          Image(image: AssetImage('assets/images/hotel.png')),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            'Отель\nНевский',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
