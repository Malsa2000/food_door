import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/catograes/favorit.dart';
import 'package:food_door/controller_helper.dart';
import 'package:food_door/provider/languge_provider.dart';
import 'package:food_door/setting.dart';
import 'package:food_door/setting/adresses.dart';
import 'package:food_door/setting/cart_payment.dart';
import 'package:food_door/setting/change_languges.dart';
import 'package:food_door/setting/my_account.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'Screen/Auth/forget_pass.dart';
import 'Screen/Auth/login.dart';
import 'Screen/Auth/reset_new_pass.dart';
import 'Screen/Auth/sign_uup.dart';
import 'Screen/Auth/verifcation_mobile.dart';
import 'Screen/home.dart';
import 'Screen/lunch_screen.dart';
import 'Screen/on_bording.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Screen/setting.dart';
import 'bouttom_navigation_bar.dart';
import 'catograes/all_catorgries.dart';
import 'catograes/cart.dart';
import 'catograes/catograes.dart';
import 'catograes/item.dart';
import 'catograes/sub_catog.dart';
import 'controller/shared_pref_controlledr.dart';
import 'faqs.dart';
import 'notifcation/notifcation.dart';
import 'order/add_order.dart';
import 'order/order_det.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().inittalShared();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              appBarTheme: AppBarTheme(
                  backgroundColor: Color(0xFF00AD8F),
                  centerTitle: true,
                  elevation: 0,
                  iconTheme: const IconThemeData(color:Color(0xFFFFFFFF)),
                  titleTextStyle: GoogleFonts.ubuntu(
                    fontSize: 18,
                    color: const Color(0xFFFFFFFF),
                  ))),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: const [ Locale('ar'), Locale('en')],
          locale:  const Locale("en"),
          initialRoute: '/LunchScreen',
          routes: {
            '/onBording': (context) => const OnBording(),
            '/LunchScreen': (context) => const LunchScreen(),
            '/Login': (context) => const Login(),
            '/Home': (context) =>  Home(),
            '/AllCatogres' :(context) =>const Catogies(),
            '/catogres' :(context) =>const Catogies(),
            '/Item' :(context) => const Item(),
            '/sub_catogres' :(context) => SubCategories(),
            '/SignUp' :(context) =>const SignUp(),
            '/bot' :(context) => const NavigatorButtom(),
            '/Favorit' :(context) =>  const Favorit(),
            '/veryfied_code' :(context) =>const VerfcationMobile(),
            '/forget_pass' :(context) =>const ForgetPass(),
            '/faqs' :(context) => FaqsTest(),
            '/cart_payment' : (context) => CartPaymrntMethods(),
            '/change_languges' :(context)=> CardPayment(),
            '/address' :(context) =>Address(),
            '/myAccount' :(context)=> MyAccount(),
            '/Setting' : (context) => Setting(),
            '/forget_pass' :(context) =>ForgetPass(),
            '/reset_new_pass' :(context) => RestNewPass(),
            '/cart' :(context) => Cart(),
            '/order' :(context) =>Order(),
            '/order_detiles' :(context) =>OrderDetiles(),
            '/notfcation' :(context) => Notfcations(),





        }
          );
      },
    );
  }
}
