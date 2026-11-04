import 'package:bechdu_partner/application/business_logic/auth/auth_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart';
import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/domain/model/auth/otp_model/otp_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_model/verify_otp_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class ScreenOTP extends StatefulWidget {
  const ScreenOTP({super.key, required this.delete});

  final bool delete;

  @override
  State<ScreenOTP> createState() => _ScreenOTPState();
}

class _ScreenOTPState extends State<ScreenOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter OTP to verify',
              style: textHeadBoldBig.copyWith(fontSize: sWidth * 0.07),
            ),
            kHeight20,
            Wrap(
              children: [
                Text('A 4 digit OTP has been sent to your phone number ',
                    style: textHeadMedium1.copyWith(color: kGreyLight)),
                widget.delete
                    ? kEmpty
                    : Text(
                        '+91 ${context.read<AuthBloc>().phoneController.text.trim()} ',
                        style: textHeadMedium1),
                widget.delete
                    ? kEmpty
                    : InkWell(
                        onTap: () {
                          context.read<AuthBloc>().otpController.clear();
                          Navigator.pop(context);
                        },
                        child: Text(
                          ' Change',
                          style: textHeadMedium1.copyWith(color: kBluePrimary),
                        ),
                      )
              ],
            ),
            kHeight20,
            Text(
              widget.delete
                  ? 'Enter OTP To Delete Your Account'
                  : 'Enter OTP Text',
              style: textHeadBoldBig.copyWith(
                  color: widget.delete ? kRed : kGreyDark),
            ),
            kHeight20,
            Center(
              child: SizedBox(
                width: sWidth * 0.7,
                child: Pinput(
                  controller: context.read<AuthBloc>().otpController,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  onCompleted: (value) {},
                  length: 4,
                  defaultPinTheme: PinTheme(
                    width: sWidth * 0.11,
                    height: sWidth * 0.11,
                    textStyle:
                        textHeadMedium1.copyWith(fontSize: sWidth * .060),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kGreenLight.withValues(alpha: 0.03),
                          offset: const Offset(0, 6),
                          blurRadius: 6,
                          spreadRadius: 2,
                        ),
                      ],
                      border: Border.all(color: kGreenPrimary),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
            ),
            kHeight30,
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (!widget.delete && state.isLogin) {
                  // login
                  Navigator.pushNamedAndRemoveUntil(
                      context,
                      state.role ? Routes.bottomBar : Routes.homePage,
                      (route) => false);
                } else if (widget.delete && state.deleteSuccess) {
                  if (state.message != null) {
                    showSnackBar(
                        context: context,
                        message: 'Your Account Hasbeen Deleted',
                        color: kRed);
                  }
                  // delete account
                  context.read<AuthBloc>().add(const AuthEvent.reset());
                  context.read<OrdersBloc>().add(const OrdersEvent.reset());
                  context.read<RequoteBloc>().add(const RequoteEvent.reset());
                  context.read<PointsBloc>().add(const PointsEvent.reset());
                  context
                      .read<TranscationBloc>()
                      .add(const TranscationEvent.reset());
                  context
                      .read<PickupPartnerBloc>()
                      .add(const PickupPartnerEvent.reset());
                  Navigator.pushNamedAndRemoveUntil(
                      context, Routes.signInPage, (route) => false);
                }
              },
              builder: (context, state) {
                return state.deleteLoading
                    ? Center(
                        child: CircularProgressIndicator(
                            color: state.deleteLoading ? kRed : kGreenPrimary))
                    : AuthCustomButtom(
                        backgroundColor: widget.delete ? kRed : kGreenPrimary,
                        text: 'Verify OTP',
                        onTap: () {
                          if (context
                                  .read<AuthBloc>()
                                  .otpController
                                  .text
                                  .length ==
                              4) {
                            if (widget.delete && !state.deleteLoading) {
                              // delete account
                              context.read<AuthBloc>().add(
                                    AuthEvent.verifyDeleteAccount(
                                      otpModel: OtpModel(
                                          otp: context
                                              .read<AuthBloc>()
                                              .otpController
                                              .text),
                                    ),
                                  );
                            } else if (!state.isLoading) {
                              // login
                              context.read<AuthBloc>().add(
                                    AuthEvent.verifyOtp(
                                      verifyOtpModel: VerifyOtpModel(
                                          otp: context
                                              .read<AuthBloc>()
                                              .otpController
                                              .text,
                                          phone: context
                                              .read<AuthBloc>()
                                              .phoneController
                                              .text),
                                    ),
                                  );
                            }
                          }
                        });
              },
            )
          ],
        ),
      ),
    );
  }
}
