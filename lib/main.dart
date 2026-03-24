import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart';
import 'package:bechdu_partner/application/business_logic/notification/notification_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart';
import 'package:bechdu_partner/application/business_logic/role/role_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes_generator.dart';
import 'package:bechdu_partner/domain/core/di/dipendency_injection.dart';
import 'package:bechdu_partner/application/business_logic/qc/qc_bloc.dart';
import 'package:bechdu_partner/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secure_application/secure_application.dart';

final navigatorKey = GlobalKey<NavigatorState>();

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await configuteInjection();
  runApp(SecureApplication(child: Beachdu()));
}

class Beachdu extends StatelessWidget {
  Beachdu({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<AuthBloc>()),
          BlocProvider(create: (context) => getIt<RequoteBloc>()),
          BlocProvider(create: (context) => getIt<RoleBloc>()),
          BlocProvider(create: (context) => getIt<PointsBloc>()),
          BlocProvider(create: (context) => getIt<OrdersBloc>()),
          BlocProvider(create: (context) => getIt<TranscationBloc>()),
          BlocProvider(create: (context) => getIt<PickupPartnerBloc>()),
          BlocProvider(create: (context) => getIt<NotificationBloc>()),
          BlocProvider(create: (context) => getIt<QcBloc>()),
        ],
        child: MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: routeGenerator.onGenerateRoute,
        ),
      ),
    );
  }
}
