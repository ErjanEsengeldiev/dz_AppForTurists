import 'package:dz_ambulance/routes/main_screen/main_screen.dart';
import 'package:dz_ambulance/routes/servis_nubers/institutions/embassy/embassy_call.dart';
import 'package:dz_ambulance/routes/servis_nubers/institutions/medicin/ambulance_call.dart';
import 'package:dz_ambulance/routes/servis_nubers/institutions/police/police_call.dart';
import 'package:dz_ambulance/routes/servis_nubers/institutions/transport/add_taxidrivers.dart';
import 'package:dz_ambulance/routes/servis_nubers/servise_numbers.dart';
import 'package:flutter/material.dart';
import 'routes/slider_gid/slider_gid.dart';
import 'routes/start_page/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const StartPage(),
        '/sliderGid': (context) => const SliderGid(),
        '/mianscreen': (context) => const MainScreen(),
        '/serviseNumbers': (context) => const ServiseNumbers(),
        '/ambulanceCall': (context) => const AmbulanceCall(),
        '/policeCall': (context) => const PoliceCall(),
        '/embessycall': (context) => const EmbassyCall(),
        '/addTaxiDrivers': (context) => const AddTaxiDrivers(),
        

      },
    );
  }
}
