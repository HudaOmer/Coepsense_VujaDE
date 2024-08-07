import 'package:corpsense_vujade/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'provider/auth.dart';
// import 'package:flutter/services.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //     systemNavigationBarColor: mainColor,
  //     statusBarColor: mainColor,
  //     systemNavigationBarDividerColor: mainColor));

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authProvider);
    final isAuthenticatedAsync = authService.isAuthenticated;

    return FutureBuilder<bool>(
        future: isAuthenticatedAsync,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const MaterialApp(
              home: Scaffold(body: Center(child: CircularProgressIndicator())),
            );
          }

          // final isAuthenticated = snapshot.data ?? false;
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme:
                  ThemeData(primarySwatch: Colors.green, fontFamily: "Ubuntu"),
              home: const SplashScreen()
              //  isAuthenticated ? const HomePage() : const SignInPage(),
              );
        });
  }
}
