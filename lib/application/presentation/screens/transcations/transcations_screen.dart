import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/completed_transcations.dart';
import 'package:bechdu_partner/application/presentation/screens/transcations/widgets/pending_transcations.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secure_application/secure_application.dart';

class ScreenTranscations extends StatefulWidget {
  const ScreenTranscations({super.key});

  @override
  State<ScreenTranscations> createState() => _ScreenTranscationsState();
}

class _ScreenTranscationsState extends State<ScreenTranscations> {
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
          .read<TranscationBloc>()
          .add(const TranscationEvent.getManuelTransactions(call: false));
      context
          .read<TranscationBloc>()
          .add(const TranscationEvent.getCreditedTranscations(call: false));
      context
          .read<TranscationBloc>()
          .add(const TranscationEvent.getDebitedTranscations(call: false));
      context
          .read<PickupPartnerBloc>()
          .add(const PickupPartnerEvent.getPartnerProfile());
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions', style: textHeadBoldBig2),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            PendingTranscationSession(),
            CompletedTranscationSession()
          ],
        ),
      ),
    );
  }
}
