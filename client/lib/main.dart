import 'package:client/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(199, 23, 253, 226),
    background: const Color.fromARGB(197, 221, 241, 121),
    onBackground: const Color.fromARGB(198, 0, 253, 223),
    secondaryContainer: const Color.fromARGB(197, 0, 164, 253),
    brightness: Brightness.light);

var kDarkColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(198, 94, 119, 116),
    background: const Color.fromARGB(197, 113, 91, 16),
    onBackground: const Color.fromARGB(197, 9, 84, 75),
    secondaryContainer: const Color.fromARGB(197, 48, 130, 86),
    brightness: Brightness.dark);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kDarkColorScheme.background,
            foregroundColor: kDarkColorScheme.primary,
          ),
          scaffoldBackgroundColor: kDarkColorScheme.onBackground,
          cardTheme: CardTheme(
              color: kDarkColorScheme.background,
              shadowColor: kDarkColorScheme.primary,
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              )),
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: kDarkColorScheme.onBackground,
            modalBackgroundColor: kDarkColorScheme.onBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  color: kDarkColorScheme.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                titleMedium: TextStyle(
                  color: kDarkColorScheme.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                titleSmall: TextStyle(
                  color: kDarkColorScheme.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  foregroundColor: kDarkColorScheme.secondaryContainer,
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )))),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.background,
          foregroundColor: kColorScheme.primary,
        ),
        scaffoldBackgroundColor: kColorScheme.onBackground,
        cardTheme: CardTheme(
            color: kColorScheme.background,
            shadowColor: kColorScheme.primary,
            margin: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 5,
            )),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: kColorScheme.onBackground,
          modalBackgroundColor: kColorScheme.onBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                color: kColorScheme.primary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              titleMedium: TextStyle(
                color: kColorScheme.primary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              titleSmall: TextStyle(
                color: kColorScheme.primary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                foregroundColor: kColorScheme.secondaryContainer,
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ))),
      ),
      
      title: 'Expense Tracker',
      home: const Expenses(),
    ),
  );
}
