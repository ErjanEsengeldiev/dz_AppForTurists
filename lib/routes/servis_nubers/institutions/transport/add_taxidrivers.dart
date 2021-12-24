import 'package:dz_ambulance/colors/color.dart';
import 'package:flutter/material.dart';

class AddTaxiDrivers extends StatefulWidget {
  const AddTaxiDrivers({Key? key}) : super(key: key);

  @override
  _AddTaxiDriversState createState() => _AddTaxiDriversState();
}

class _AddTaxiDriversState extends State<AddTaxiDrivers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsForApp.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: const [
              SizedBox(
                height: 50,
              ),
              _Edit(),
              SizedBox(
                height: 20,
              ),
              _NameOfDriver(),
              _PhoneNumber(),
              _Description(),
              _AddButton(),
              _DeleteButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _DeleteButton extends StatelessWidget {
  const _DeleteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: ColorsForApp.blue,
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 7),
          width: double.infinity,
          child: const Text(
            'УДАЛИТЬ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  const _AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: ColorsForApp.blue,
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 7),
          width: double.infinity,
          child: const Text(
            'ДОБАВИТЬ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Описание',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Водитель Владимир; четные данные',
                hintStyle: TextStyle(fontSize: 13)),
          ),
        ],
      ),
    );
  }
}

class _PhoneNumber extends StatelessWidget {
  const _PhoneNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Телефон',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '+996XXXXXXXXX', hintStyle: TextStyle(fontSize: 13)),
          ),
        ],
      ),
    );
  }
}

class _NameOfDriver extends StatelessWidget {
  const _NameOfDriver({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Названия',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Водитель такси', hintStyle: TextStyle(fontSize: 13)),
          ),
        ],
      ),
    );
  }
}

class _Edit extends StatelessWidget {
  const _Edit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(30),
          splashColor: ColorsForApp.blue,
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
            size: 40,
            color: ColorsForApp.blue,
          ),
        ),
        InkWell(
          child: const Text('Редактировать'),
          onTap: () {},
        )
      ],
    );
  }
}
