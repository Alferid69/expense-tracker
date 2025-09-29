import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

var KColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 96, 59, 181),
);

var KDarkColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 5, 99, 125),
  brightness: Brightness.dark,
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
  //   fn,
  // ) {
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: KDarkColorScheme,
          cardTheme: CardThemeData().copyWith(
            color: KDarkColorScheme.secondaryContainer,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: KDarkColorScheme.primaryContainer,
              foregroundColor: KDarkColorScheme.onPrimaryContainer,
            ),
          ),
        ),

        theme: ThemeData().copyWith(
          colorScheme: KColorScheme,
          appBarTheme: AppBarTheme().copyWith(
            backgroundColor: KColorScheme.onPrimaryContainer,
            foregroundColor: KColorScheme.primaryContainer,
          ),
          cardTheme: CardThemeData().copyWith(
            color: KColorScheme.secondaryContainer,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: KColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: KColorScheme.onSecondaryContainer,
            ),
          ),
        ),

        // themeMode: ThemeMode.system, this is the default
        // themeMode: ThemeMode.light,
        home: Expenses(),
      ),
    );
  // }
  // )
}
