import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:movie_review_app/Firebase/firebase_options.dart';
import 'package:movie_review_app/Router.dart';
import 'package:flutter/services.dart';

import '../Provider/Providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Logprovider()),
      ],
      child: MyApp(),
    ));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouterWidget.router,
    );
  }
}
