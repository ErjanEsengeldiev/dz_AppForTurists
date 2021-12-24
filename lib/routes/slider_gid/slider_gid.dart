import 'package:dz_ambulance/colors/color.dart';
import 'package:flutter/material.dart';

class _PageForSlider {
  int id;
  String title;
  String imageRoud;
  Color color;
  InkWell button;
  _PageForSlider({
    required this.button,
    required this.id,
    required this.imageRoud,
    required this.title,
    required this.color,
  });
}

List<_PageForSlider> _pagesList = [
  _PageForSlider(
      button: const InkWell(),
      id: 0,
      imageRoud: 'assets/images/Group.png',
      color: Colors.black,
      title:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis aliquam id id in pharetra lorem. Purus tortor velit sed consequat urna, ipsum. Sit nullam ultrices sed morbi sed. Et blandit commodo vel blandit praesent sed donec ultrices a. Vel, laoreet in et quam elit, sed viverra faucibus.Proin nisi amet urna purus vivamus felis cursus nulla.'),
  _PageForSlider(
      button: const InkWell(),
      id: 1,
      imageRoud: 'assets/images/Group.png',
      title: '2',
      color: Colors.black),
  _PageForSlider(
      button: const InkWell(),
      id: 2,
      imageRoud: 'assets/images/Group.png',
      title: '3',
      color: Colors.black),
  _PageForSlider(
      button: InkWell(
        child: const Text('Next Page'),
        onTap: () {},
      ),
      id: 3,
      imageRoud: 'assets/images/Group.png',
      title: 'Нажмите что бы перейти на следующий экран',
      color: Colors.black),
];

final PageController pageController = PageController();
int indexOfPage = 0;

class SliderGid extends StatefulWidget {
  const SliderGid({Key? key}) : super(key: key);

  @override
  State<SliderGid> createState() => _SliderGidState();
}

class _SliderGidState extends State<SliderGid> {
  //Обновляю indexOfPage когда меняется страничка
  @override
  void initState() {
    pageController.addListener(() {
      int next = pageController.page!.round();
      if (indexOfPage != next) {
        setState(() {
          indexOfPage = next;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: _pagesList.length,
            itemBuilder: (_, currentIndex) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Image(
                        image: AssetImage(_pagesList[currentIndex].imageRoud)),
                  ),
                  ForNavigator(
                    id: currentIndex,
                    child: Text(_pagesList[currentIndex].title),
                  )
                ],
              ),
            ),
          ),
        ),
        _buildBullets(),
      ]),
    );
  }
}

class ForNavigator extends StatelessWidget {
  final int id;
  final Widget child;
  const ForNavigator({
    required this.child,
    required this.id,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return id == 3
        ? ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/mianscreen');
            },
            child: const Text('Продолжить'),
          )
        : child;
  }
}

//Carousel Slider
@override
Widget _buildBullets() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: _pagesList.map((i) {
      return InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {
          pageController.jumpToPage(i.id);
          indexOfPage = i.id;
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: i.id == indexOfPage
                  ? ColorsForApp.blue
                  : ColorsForApp.lightBlue,
            ),
          ),
        ),
      );
    }).toList(),
  );
}
