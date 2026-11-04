import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCoinShortCutButton extends StatelessWidget {
  const AddCoinShortCutButton({
    super.key,
    required this.coins,
  });

  final int coins;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PointsBloc, PointsState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            if (context.read<TranscationBloc>().priceController.text.isEmpty) {
              context.read<TranscationBloc>().priceController.text = '0';
            }
            context.read<TranscationBloc>().priceController.text = (int.parse(
                        context.read<TranscationBloc>().priceController.text) +
                    coins)
                .toString();
            int coinss = 0;
            try {
              coinss = int.parse(
                  context.read<TranscationBloc>().priceController.text.trim());
            } catch (e) {
              e;
            }
            context.read<TranscationBloc>().add(
                TranscationEvent.calculateAmount(
                    coinValue: state.coinValue ?? 0,
                    gstValue: state.gst ?? 0,
                    coins: coinss));
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: kRadius5,
              child: ColoredBox(
                color: kWhite.withValues(alpha: 0.3),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '+$coins',
                    style: textHeadBold1.copyWith(color: kWhite),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
