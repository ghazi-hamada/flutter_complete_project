import 'package:flutter/material.dart';
import 'core/helpers/constants.dart';
import 'core/routing/app_routes.dart';
import 'core/routing/routes.dart';
import 'core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRoutes appRoutes;
  const DocApp({super.key, required this.appRoutes});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainblue,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: appRoutes.generateRoute,
        initialRoute:isLoggedInUser ? Routes.homeScreen : Routes.onBoardingScreen,
      ),
    );
  }
}
//   git config --global user.email "ghazihamada7@gmail.com"
//   git config --global user.name "Ghazi Hamada"