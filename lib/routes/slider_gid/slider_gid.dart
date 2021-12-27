import 'package:dz_ambulance/colors/color.dart';
import 'package:flutter/material.dart';

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
              itemBuilder: (_, currentIndex) => _PageForm(
                    imageRoud: _pagesList[currentIndex].imageRoud,
                    text: _pagesList[currentIndex].title,
                    isTrue: currentIndex == 3 ? true : false,
                  )),
        ),
        _buildBullets(),
      ]),
    );
  }
}

class _PageForm extends StatelessWidget {
  final bool isTrue;
  final String imageRoud;
  final String text;
  const _PageForm({
    this.isTrue = false,
    required this.imageRoud,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Image(image: AssetImage(imageRoud)),
          ),
          Text(text),
          isTrue == true
              ? ElevatedButton(
                  child: Text('Push'),
                  onPressed: () {},
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _PageForSlider {
  int id;
  String title;
  String imageRoud;
  Color color;

  _PageForSlider({
    required this.id,
    required this.imageRoud,
    required this.title,
    required this.color,
  });
}

List<_PageForSlider> _pagesList = [
  _PageForSlider(
      id: 0,
      imageRoud: 'assets/images/Group.png',
      color: Colors.black,
      title:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis aliquam id id in pharetra lorem. Purus tortor velit sed consequat urna, ipsum. Sit nullam ultrices sed morbi sed. Et blandit commodo vel blandit praesent sed donec ultrices a. Vel, laoreet in et quam elit, sed viverra faucibus.Proin nisi amet urna purus vivamus felis cursus nulla.'),
  _PageForSlider(
      id: 1,
      imageRoud: 'assets/images/Group.png',
      title: '2',
      color: Colors.black),
  _PageForSlider(
      id: 2,
      imageRoud: 'assets/images/Group.png',
      title: '3',
      color: Colors.black),
  _PageForSlider(
      id: 3,
      imageRoud: 'assets/images/Group.png',
      title: 'Нажмите что бы перейти на следующий экран',
      color: Colors.black),
];

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
