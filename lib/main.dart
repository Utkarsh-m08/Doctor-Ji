import 'package:camera/camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/loginSignin/authentication/auth.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'infoPage/infoPage.dart';
import 'package:flutter_application_1/properties/prop.dart' as prop;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

late List<CameraDescription> _cameras;
List<CameraDescription> getCamera() {
  return _cameras;
}


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();  
  _cameras = await availableCameras();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

String lang = 'en';
Locale locale = Locale('en');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.grey),
      // theme:ThemeData.raw(applyElevationOverlayColor: applyElevationOverlayColor, cupertinoOverrideTheme: cupertinoOverrideTheme, extensions: extensions, inputDecorationTheme: inputDecorationTheme, materialTapTargetSize: materialTapTargetSize, pageTransitionsTheme: pageTransitionsTheme, platform: platform, scrollbarTheme: scrollbarTheme, splashFactory: splashFactory, useMaterial3: useMaterial3, visualDensity: visualDensity, canvasColor: canvasColor, cardColor: cardColor, colorScheme: colorScheme, dialogBackgroundColor: dialogBackgroundColor, disabledColor: disabledColor, dividerColor: dividerColor, focusColor: focusColor, highlightColor: highlightColor, hintColor: hintColor, hoverColor: hoverColor, indicatorColor: indicatorColor, primaryColor: primaryColor, primaryColorDark: primaryColorDark, primaryColorLight: primaryColorLight, scaffoldBackgroundColor: scaffoldBackgroundColor, secondaryHeaderColor: secondaryHeaderColor, shadowColor: shadowColor, splashColor: splashColor, unselectedWidgetColor: unselectedWidgetColor, iconTheme: iconTheme, primaryIconTheme: primaryIconTheme, primaryTextTheme: primaryTextTheme, textTheme: textTheme, typography: typography, appBarTheme: appBarTheme, badgeTheme: badgeTheme, bannerTheme: bannerTheme, bottomAppBarTheme: bottomAppBarTheme, bottomNavigationBarTheme: bottomNavigationBarTheme, bottomSheetTheme: bottomSheetTheme, buttonBarTheme: buttonBarTheme, buttonTheme: buttonTheme, cardTheme: cardTheme, checkboxTheme: checkboxTheme, chipTheme: chipTheme, dataTableTheme: dataTableTheme, dialogTheme: dialogTheme, dividerTheme: dividerTheme, drawerTheme: drawerTheme, dropdownMenuTheme: dropdownMenuTheme, elevatedButtonTheme: elevatedButtonTheme, expansionTileTheme: expansionTileTheme, filledButtonTheme: filledButtonTheme, floatingActionButtonTheme: floatingActionButtonTheme, iconButtonTheme: iconButtonTheme, listTileTheme: listTileTheme, menuBarTheme: menuBarTheme, menuButtonTheme: menuButtonTheme, menuTheme: menuTheme, navigationBarTheme: navigationBarTheme, navigationDrawerTheme: navigationDrawerTheme, navigationRailTheme: navigationRailTheme, outlinedButtonTheme: outlinedButtonTheme, popupMenuTheme: popupMenuTheme, progressIndicatorTheme: progressIndicatorTheme, radioTheme: radioTheme, segmentedButtonTheme: segmentedButtonTheme, sliderTheme: sliderTheme, snackBarTheme: snackBarTheme, switchTheme: switchTheme, tabBarTheme: tabBarTheme, textButtonTheme: textButtonTheme, textSelectionTheme: textSelectionTheme, timePickerTheme: timePickerTheme, toggleButtonsTheme: toggleButtonsTheme, tooltipTheme: tooltipTheme)
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale('en'),
      supportedLocales: [
        Locale('en'),
        Locale('hi'),
      ],
      home: auth(),
    );
  }
}
