import 'package:fd_delivery/cubits/dark_mode_cubit.dart';
import 'package:fd_delivery/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(_) => BlocProvider(
      create: (_) => DarkModeCubit(),
      child: _themeSelector(
        (context, mode) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food Delivery',
          theme: _theme(context),
          darkTheme: _darkTheme(context),
          themeMode: mode,
          home: const WelcomePage(),
        ),
      ));
  Widget _themeSelector(
          Function(BuildContext context, ThemeMode mode) builder) =>
      BlocBuilder<DarkModeCubit, bool>(
          builder: (context, darkModeEnabled) => builder(
                context,
                darkModeEnabled ? ThemeMode.dark : ThemeMode.light,
              ));
  ThemeData _theme(BuildContext context) {
    final primaryColor = Colors.red[700]!;
    final primaryColorDark = Colors.red[900]!;
    final secondaryColor = Colors.orangeAccent[100]!;
    final onSecondaryColor = Colors.grey[100]!;
    return ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
      ),
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: secondaryColor,
        onSecondary: onSecondaryColor,
      ),
      brightness: Brightness.light,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      textTheme: const TextTheme(headline4: TextStyle(color: Colors.black87)),
    );
  }

  ThemeData _darkTheme(BuildContext context) {
    final primaryColor = Colors.red[700]!;
    final primaryColorDark = Colors.red[900]!;
    final secondaryColor = Colors.orangeAccent[100]!;
    final surfaceColor = Colors.black26;
    return ThemeData(
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      colorScheme: ColorScheme.dark(
        surface: surfaceColor,
        primary: primaryColor,
        secondary: secondaryColor,
      ),
      brightness: Brightness.dark,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      textTheme: const TextTheme(headline4: TextStyle(color: Colors.white)),
    );
  }
}
