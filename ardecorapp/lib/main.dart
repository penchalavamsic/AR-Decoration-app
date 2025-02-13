import 'package:ardecorapp/features/app/splash_screen/splash_screen.dart';
import 'package:ardecorapp/features/user_auth/presentation/pages/login_page.dart';
import 'package:ardecorapp/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:ardecorapp/features/user_auth/presentation/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyC3jdDJ0pSqh0OCnrsTeNuN-OOIRt4jn7A",
        appId: "1:911471710317:web:b025e1c66dd49de51baf64",
        messagingSenderId: "911471710317",
        projectId: "ardecorapp-109ff",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AR Decor App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(child: LoginPage()),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(), // Add this line
      },
    );
  }
}
