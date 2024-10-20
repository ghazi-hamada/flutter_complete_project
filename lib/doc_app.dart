import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/routing/app_routes.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DocApp extends StatelessWidget {
  final AppRoutes appRoutes;
const DocApp({ Key? key, required this.appRoutes }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainblue,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: appRoutes.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
//   git config --global user.email "ghazihamada7@gmail.com"
//   git config --global user.name "Ghazi Hamada"