import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/login_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/otp_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/bottom_bar/bottom_bar_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/complete_order/complete_order_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/complete_order/widgets/image_preview.dart';
import 'package:bechdu_partner/application/presentation/screens/home/home_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/notification/notificaton_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/order/order_detail_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/add_pick_up/add_pick_up_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/pick_up_list/pick_up_list_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/pick_up_profile/pick_up_profile_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/points/points_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/profile/profile_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/settings/settings_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/settings/support_details.dart';
import 'package:bechdu_partner/application/presentation/screens/splash/splash_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/transcations_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/qc_reports/qc_reports_screen.dart';
import 'package:bechdu_partner/application/presentation/screens/qc_reports/qc_order_detail_screen.dart';
import 'package:bechdu_partner/application/presentation/utils/pdf/pdf_preview.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const ScreenSplash());
      case Routes.signInPage:
        return fadePageRoute(const ScreenLogin());
      // return MaterialPageRoute(builder: (ctx) => const ScreenLogin());
      case Routes.otpPage:
        return arguments is bool
            ? MaterialPageRoute(builder: (ctx) => ScreenOTP(delete: arguments))
            : _errorScreen();
      case Routes.addPickUpPage:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenAddPickUpPartner());
            
      case Routes.supportDetails:
        return MaterialPageRoute(
            builder: (ctx) => const SupportDetails());

      case Routes.partnersList:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenPickUpPartnersList());
      case Routes.qcReportsPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenQcReports());
      case Routes.qcReportDetail:
        return arguments is String
            ? MaterialPageRoute(
                builder: (ctx) => ScreenQcOrderDetail(reportId: arguments))
            : _errorScreen();
      case Routes.settingsPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenSettings());
      case Routes.pointsPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenPoints());
      case Routes.completeOrderPage:
        return arguments is OrderDetail
            ? MaterialPageRoute(
                builder: (ctx) => ScreenCompleteOrder(orderDetail: arguments))
            : _errorScreen();
      case Routes.pdfPage:
        return arguments is PreviewArguments
            ? MaterialPageRoute(
                builder: (ctx) => ScreenPdfPreview(argument: arguments))
            : _errorScreen();
      case Routes.profilePage:
        return MaterialPageRoute(builder: (ctx) => const ScreenProfile());
      case Routes.transcationPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenTranscations());
      case Routes.homePage:
        return fadePageRoute(const ScreenHome());
      // return MaterialPageRoute(builder: (ctx) => const ScreenHome());

      case Routes.pickUpProfilePage:
        return arguments is int
            ? MaterialPageRoute(
                builder: (ctx) => ScreenPickUpPartnerProfile(index: arguments))
            : _errorScreen();
      case Routes.bottomBar:
        return fadePageRoute(const ScreenBottomBar());
      // return MaterialPageRoute(builder: (ctx) => const ScreenBottomBar());
      case Routes.orderScreen:
        return arguments is OrderDetail
            ? MaterialPageRoute(
                builder: (ctx) => ScreenOrderDetail(orderDetail: arguments))
            : _errorScreen();
      case Routes.notificationPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenNotification());
      case Routes.imagePreviewPage:
        return arguments is String
            ? MaterialPageRoute(
                builder: (ctx) => ImagePreview(image: arguments))
            : _errorScreen();
      default:
        return _errorScreen();
    }
  }

  static Route<dynamic> _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Error while navigating')),
      );
    });
  }
}

PageRouteBuilder fadePageRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      const curve = Curves.easeInOut;

      final tween = Tween(begin: begin, end: end).chain(
        CurveTween(curve: curve),
      );

      var opacityAnimation = animation.drive(tween);

      return FadeTransition(
        opacity: opacityAnimation,
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 500),
  );
}
