import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/Screens/Home%20layout/home_layour_screen.dart';
import 'package:saico_academy/Screens/Login/login_screen.dart';


import 'Cubits/App Cubit/app_cubit.dart';
import 'Cubits/Auth Cubit/auth_cubit.dart';
import 'Cubits/bloc_observer.dart';
import 'Network/Local/CashHelper.dart';
import 'Network/Remote/dio_helper.dart';
import 'Screens/Intorduction/introduction_screen.dart';
import 'generated/l10n.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  DioHelper.init();
  await CashHelper.init();


  print(CashHelper.getData(key: 'token'));


  runApp(MyApp(firstScreen: checkFirstTime(),));
}


Widget checkFirstTime(){

  print(CashHelper.getData(key: 'firstTime'));
  if(CashHelper.getData(key: 'firstTime') != true) {
    return IntroductionScreen();
  }
  else
  {
    return HomeLayout();
  }


}

class MyApp extends StatelessWidget {
  final firstScreen;
   MyApp({super.key,required this.firstScreen});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()
          ..getHomeData()
          ..getCategory()
            ..postUserData()

        ),
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child: MaterialApp(
        title: 'Saico Academy',
        locale: const Locale('ar'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.white,
            )
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: MyColor.primaryColor),
          useMaterial3: true,
        ),
        home: firstScreen,
      ),
    );
  }
}




