import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/pick_up_list/widgets/custom_add_icon.dart';
import 'package:bechdu_partner/application/presentation/screens/pick_up_partner/pick_up_list/widgets/pickup_partner_list_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenPickUpPartnersList extends StatelessWidget {
  const ScreenPickUpPartnersList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<PickupPartnerBloc>()
          .add(const PickupPartnerEvent.getPickupPartners());
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pickup Partners',
          style: textHeadBoldBig2,
        ),
        actions: const [CustomAddIcon(), kWidth20],
      ),
      body: BlocBuilder<PickupPartnerBloc, PickupPartnerState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
                child: CircularProgressIndicator(color: kGreenPrimary));
          }
          if (state.pickUpPersons != null && state.pickUpPersons!.isNotEmpty) {
            return RefreshIndicator(
              onRefresh: () async {
                context
                    .read<PickupPartnerBloc>()
                    .add(const PickupPartnerEvent.getPickupPartners());
                await Future.delayed(const Duration(seconds: 1));
              },
              child: ListView.separated(
                itemCount: state.pickUpPersons!.length,
                separatorBuilder: (context, index) => ColoredBox(
                  color: kGreyLight.withValues(alpha: 0.5),
                  child: const SizedBox(height: 1, width: double.infinity),
                ),
                itemBuilder: (context, index) => PickupPartnerListTile(
                    index: index, pickUpPerson: state.pickUpPersons![index]),
              ),
            );
          } else {
            return const Center(child: Text('No Pickup Partners to show'));
          }
        },
      ),
    );
  }
}
