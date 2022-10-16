import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tarea1_danielcastro/screens/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => {runApp(const MyApp())});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "M-Mcomerce",
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        '/details': (context) => const DetailScreen(),
        '/shoppingcart': (context) => const ShoppingScreen(),
        '/purshase': (context) => PurshaseScreen(),
        '/searchbar': (context) => const SearchBarScreen(),
        '/thanks': (context) => const ThanksScreen()
      },
    );
  }
}
