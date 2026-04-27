import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/points/widgets/add_coin_short_button.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/dialoge/dialoge.dart';
import 'package:bechdu_partner/data/feature/payu_gateway.dart';
import 'package:bechdu_partner/domain/model/transcaton/epay_model/epay_model.dart';
import 'package:bechdu_partner/secret/secret_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum PaymentMethod { epayment, cash }

PaymentMethod paymentMethod = PaymentMethod.epayment;

class AddCoinsDialoge extends StatefulWidget {
  const AddCoinsDialoge({
    super.key,
  });

  @override
  State<AddCoinsDialoge> createState() => _AddCoinsDialogeState();
}

class _AddCoinsDialogeState extends State<AddCoinsDialoge> {
  bool error = false;
  String errorMsg = '';
  @override
  void initState() {
    context.read<TranscationBloc>().priceController.text = '';
    context.read<TranscationBloc>().add(const TranscationEvent.calculateAmount(
        coins: 0, coinValue: 0, gstValue: 0));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        child: ClipRRect(
          borderRadius: kRadius5,
          child: ColoredBox(
            color: kBluePrimary,
            child: SizedBox(
              width: sWidth * 0.80,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add Points',
                          style: textHeadBold1.copyWith(color: kWhite),
                        ),
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                            color: kWhite,
                          ),
                        )
                      ],
                    ),
                    FittedBox(
                      child: Text(
                        'Add More Points To Get Extra Discount',
                        style: textHeadRegular1.copyWith(color: kWhite),
                      ),
                    ),
                    kHeight10,
                    BlocBuilder<PointsBloc, PointsState>(
                      builder: (context, state) {
                        return ColoredBox(
                          color: kWhite,
                          child: TextField(
                            controller:
                                context.read<TranscationBloc>().priceController,
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              int coins = 0;
                              try {
                                coins = int.parse(context
                                    .read<TranscationBloc>()
                                    .priceController
                                    .text
                                    .trim());
                              } catch (e) {
                                e;
                              }
                              context.read<TranscationBloc>().add(
                                  TranscationEvent.calculateAmount(
                                      coinValue: state.coinValue ?? 0,
                                      gstValue: state.gst ?? 0,
                                      coins: coins));
                            },
                            cursorColor: kBluePrimary,
                            style: textHeadBoldBig,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                          ),
                        );
                      },
                    ),
                    kHeight5,
                    const Row(
                      children: [
                        AddCoinShortCutButton(coins: 100),
                        AddCoinShortCutButton(coins: 200),
                        AddCoinShortCutButton(coins: 300),
                        AddCoinShortCutButton(coins: 500)
                      ],
                    ),
                    kHeight20,
                    Text(
                      'Select Payment Mode',
                      style: textHeadBold1.copyWith(color: kWhite),
                    ),
                    kHeight10,
                    Row(
                      children: [
                        Radio(
                            activeColor: kWhite,
                            fillColor: MaterialStateProperty.all(kWhite),
                            value: PaymentMethod.epayment,
                            groupValue: paymentMethod,
                            onChanged: (value) {
                              setState(() {
                                paymentMethod = value!;
                              });
                            }),
                        Text(
                          'E-Payment',
                          style: textHeadBold1.copyWith(color: kWhite),
                        ),
                        Radio(
                            activeColor: kWhite,
                            fillColor: MaterialStateProperty.all(kWhite),
                            value: PaymentMethod.cash,
                            groupValue: paymentMethod,
                            onChanged: (value) {
                              setState(() {
                                paymentMethod = value!;
                              });
                            }),
                        Text(
                          'Cash',
                          style: textHeadBold1.copyWith(color: kWhite),
                        ),
                      ],
                    ),
                    paymentMethod == PaymentMethod.cash ? kHeight20 : kEmpty,
                    paymentMethod == PaymentMethod.cash
                        ? const CustomTextFileldPaymnet()
                        : kEmpty,
                    const UserAgrementPaymnetChekBox(),
                    kHeight10,
                    error
                        ? Text(errorMsg,
                            style: textHeadMedium1.copyWith(color: kRed))
                        : kEmpty,
                    error ? kHeight10 : kEmpty,
                    BlocBuilder<PickupPartnerBloc, PickupPartnerState>(
                      builder: (context, partner) {
                        return BlocBuilder<PointsBloc, PointsState>(
                          builder: (context, point) {
                            return BlocConsumer<TranscationBloc,
                                TranscationState>(
                              listenWhen: (previous, current) =>
                                  current.gstError ||
                                  current.manuelTranscationDone ||
                                  current.paymetnDone ||
                                  (previous.payuResponse == null &&
                                      current.payuResponse != null),
                              listener: (context, state) {
                                if (state.paymetnDone) {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      Routes.bottomBar, (route) => false);
                                  Navigator.pushNamed(
                                      context, Routes.transcationPage);
                                }
                                if (state.payuResponse != null) {
                                  final data = state.payuResponse!.toJson();
                                  final int coins = int.tryParse(context
                                          .read<TranscationBloc>()
                                          .priceController
                                          .text) ??
                                      0;
                                  final double basePrice =
                                      coins * (point.coinValue ?? 0);
                                  final double gstAmount =
                                      basePrice * ((point.gst ?? 0) / 100);

                                  data['amount'] =
                                      state.amountPayable!.toStringAsFixed(2);
                                  data['email'] =
                                      partner.partnerProfile?.email ?? '';
                                  data['phone'] =
                                      partner.partnerProfile?.phone ?? '';
                                  data['firstname'] =
                                      partner.partnerProfile?.name ?? 'Partner';
                                  data['productinfo'] =
                                      'Purchase of ${context.read<TranscationBloc>().priceController.text} coins';
                                  data['udf1'] =
                                      partner.partnerProfile?.phone ?? '';
                                  data['udf2'] = context
                                      .read<TranscationBloc>()
                                      .priceController
                                      .text;
                                  data['udf3'] = (double.parse(context
                                              .read<TranscationBloc>()
                                              .priceController
                                              .text) *
                                          (point.coinValue ?? 0))
                                      .toString();
                                  data['udf4'] = (point.gst ?? 0).toString();

                                  // Calculate hash on client side to ensure it matches the data being sent
                                  data['hash'] =
                                      PayUGateway.calculateInitiationHash(
                                    key: data['key'] ?? payUMerchantKey,
                                    txnid: data['txnid'],
                                    amount: data['amount'],
                                    productInfo: data['productinfo'],
                                    firstname: data['firstname'],
                                    email: data['email'],
                                    udf1: data['udf1'],
                                    udf2: data['udf2'],
                                    udf3: data['udf3'],
                                    udf4: data['udf4'],
                                    udf5: '',
                                    salt: payUSalt,
                                  );

                                  PayUGateway(context)
                                      .makePayment(payuData: data)
                                      .then((res) {
                                    if (res != null) {
                                      if (res['success'] == true ||
                                          res['type'] == 'success' ||
                                          res['type'] == 'webviewCallback') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text('Payment Successful'),
                                          backgroundColor: Colors.green,
                                          behavior: SnackBarBehavior.floating,
                                        ));
                                        if (res['type'] == 'webviewCallback') {
                                          context.read<TranscationBloc>().add(
                                              const TranscationEvent
                                                  .getCreditedTranscations(
                                                  call: true));
                                          Navigator.pushNamedAndRemoveUntil(
                                              context,
                                              Routes.bottomBar,
                                              (route) => false);
                                          Navigator.pushNamed(
                                              context, Routes.transcationPage);
                                          return;
                                        }

                                        final verifyModel = EpayModel(
                                            coins: coins,
                                            price: basePrice,
                                            gstPrice: gstAmount,
                                            totalPrice: basePrice + gstAmount,
                                            gstPercentage: point.gst,
                                            action: "verify",
                                            payuResponse:
                                                res['response'] ?? res);
                                        context.read<TranscationBloc>().add(
                                            TranscationEvent.makeEpaymetns(
                                                epayModel: verifyModel));
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text('Payment Failed'),
                                          backgroundColor: Colors.red,
                                          behavior: SnackBarBehavior.floating,
                                        ));
                                      }
                                    }
                                  });
                                }
                                if (state.gstError) {
                                  context
                                      .read<PointsBloc>()
                                      .add(const PointsEvent.getGst());
                                  context
                                      .read<PointsBloc>()
                                      .add(const PointsEvent.getCoinValue());
                                }
                                if (state.manuelTranscationDone) {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      Routes.bottomBar, (route) => false);
                                  Navigator.pushNamed(
                                      context, Routes.transcationPage);
                                }
                              },
                              builder: (context, state) {
                                return Center(
                                  child: InkWell(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      if (state.amountPayable == null ||
                                          state.amountPayable == 0.0) {
                                        setState(() {
                                          error = true;
                                          errorMsg =
                                              'Enter the quantity of coins you want to purchase.';
                                        });
                                      } else if (paymentMethod ==
                                              PaymentMethod.cash &&
                                          state.reciept == null) {
                                        setState(() {
                                          error = true;
                                          errorMsg =
                                              'Upload your payment reciept.';
                                        });
                                      } else if (!state.agreePolicys) {
                                        setState(() {
                                          error = true;
                                          errorMsg =
                                              'without agree to the GST and INC policy we cant move forward';
                                        });
                                      } else if (state.agreePolicys &&
                                          state.amountPayable != null &&
                                          state.amountPayable != 0.0 &&
                                          paymentMethod == PaymentMethod.cash) {
                                        context.read<TranscationBloc>().add(
                                              TranscationEvent
                                                  .makeManuelTranscationRequest(
                                                      gst: point.gst ?? 0,
                                                      coinValue:
                                                          point.coinValue ?? 0),
                                            );
                                      } else if (state.agreePolicys &&
                                          state.amountPayable != null &&
                                          state.amountPayable != 0.0 &&
                                          paymentMethod ==
                                              PaymentMethod.epayment) {
                                        final coins = int.parse(context
                                            .read<TranscationBloc>()
                                            .priceController
                                            .text
                                            .trim());
                                        final basePrice =
                                            coins * point.coinValue!;
                                        final gstAmount =
                                            basePrice * (point.gst! / 100);

                                        EpayModel epayModel = EpayModel(
                                            action: "initiate",
                                            coins: coins,
                                            gstPercentage: point.gst,
                                            gstPrice: gstAmount,
                                            totalPrice: basePrice + gstAmount,
                                            price: basePrice);

                                        context.read<TranscationBloc>().add(
                                            TranscationEvent
                                                .initiatePayuPayment(
                                                    epayModel: epayModel));
                                      }
                                    },
                                    child: state.manuelTranscationsLoading ||
                                            state.payuLoading
                                        ? const Center(
                                            child: CircularProgressIndicator(
                                                color: kWhite),
                                          )
                                        : ClipRRect(
                                            borderRadius: kRadius5,
                                            child: ColoredBox(
                                              color: kWhite,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 30,
                                                        vertical: 10),
                                                child: Text(
                                                  state.amountPayable == null ||
                                                          state.amountPayable ==
                                                              0.0
                                                      ? 'Add Coins'
                                                      : paymentMethod ==
                                                              PaymentMethod
                                                                  .epayment
                                                          ? 'Pay ₹${state.amountPayable}'
                                                          : 'Proceed\n₹${state.amountPayable}',
                                                  style: textHeadBoldBig,
                                                ),
                                              ),
                                            ),
                                          ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFileldPaymnet extends StatelessWidget {
  const CustomTextFileldPaymnet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // upload receipt here
        showCustomDialoge(
            context: context,
            title: 'Choose Image From !',
            buttonText: 'Camera',
            cancelButtonText: 'Gallery',
            onCancelTap: () {
              context
                  .read<TranscationBloc>()
                  .add(const TranscationEvent.uploadReciept(cam: false));
            },
            onTap: () {
              context
                  .read<TranscationBloc>()
                  .add(const TranscationEvent.uploadReciept(cam: true));
            });
      },
      child: BlocBuilder<TranscationBloc, TranscationState>(
        builder: (context, state) {
          return TextField(
            enabled: false,
            cursorColor: kBluePrimary,
            style: textHeadRegular1.copyWith(color: kWhite),
            decoration: InputDecoration(
              hintText: state.reciept != null
                  ? 'Proceed to continue'
                  : 'Upload The Receipt here',
              hintStyle: textHeadRegular1.copyWith(color: kWhite),
              suffixIcon: const Icon(
                Icons.file_upload_outlined,
                color: kWhite,
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: kWhite)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: kWhite)),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: kWhite)),
              contentPadding: const EdgeInsets.only(left: 10),
            ),
          );
        },
      ),
    );
  }
}

class UserAgrementPaymnetChekBox extends StatelessWidget {
  const UserAgrementPaymnetChekBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth10,
        BlocBuilder<TranscationBloc, TranscationState>(
          builder: (context, state) {
            return Checkbox(
              value: state.agreePolicys,
              onChanged: (value) {
                context
                    .read<TranscationBloc>()
                    .add(const TranscationEvent.agreePolicy());
              },
              checkColor: kBluePrimary,
              activeColor: kWhite,
              side: const BorderSide(color: kWhite),
            );
          },
        ),
        Expanded(
          child: Text(
            'By signing up I agree to the INC and GST taxes.',
            style: TextStyle(
                fontFamily: gilroyRegular,
                color: kWhite,
                fontSize: sWidth * 0.03),
          ),
        ),
        kWidth10,
      ],
    );
  }
}
