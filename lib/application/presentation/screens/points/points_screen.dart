import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/points/widgets/coin_point_table.dart';
import 'package:bechdu_partner/application/presentation/screens/points/widgets/coins_points_history.dart';
import 'package:bechdu_partner/application/presentation/screens/points/widgets/top_coin_points_avatar.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secure_application/secure_application_controller.dart';
import 'package:secure_application/secure_application_provider.dart';

class ScreenPoints extends StatefulWidget {
  const ScreenPoints({super.key});

  @override
  State<ScreenPoints> createState() => _ScreenPointsState();
}

class _ScreenPointsState extends State<ScreenPoints> {
  late SecureApplicationController _secureController;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _secureController = SecureApplicationProvider.of(context)!;
    _secureController.unlock(); // allows screenshots
  }

  @override
  void dispose() {
    _secureController.lock(); // block again when leaving
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<PickupPartnerBloc>()
          .add(const PickupPartnerEvent.getPartnerProfile());
    });
    return Scaffold(
      appBar: AppBar(title: const Text('Points')),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopCoinPointsAvatar(),
              CoinPointTable(),
              kHeight20,
              CoinsPointsHistory()
            ],
          ),
        ),
      ),
    );
  }
}
