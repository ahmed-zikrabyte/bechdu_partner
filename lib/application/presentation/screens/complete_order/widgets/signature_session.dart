import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/commen/image/image_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:signature/signature.dart';

class SignatureSession extends StatelessWidget {
  const SignatureSession({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      buildWhen: (previous, current) =>
          previous.signatureImage != current.signatureImage ||
          previous.orderCompletionError != current.orderCompletionError,
      builder: (context, state) {
        return InkWell(
          onTap: () async {
            if (state.signatureImage == null) {
              await _showSignaturePad(context);
            }
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                    width: state.orderCompletionError &&
                            state.signatureImage == null
                        ? 2
                        : 1,
                    color: state.orderCompletionError &&
                            state.signatureImage == null
                        ? kRedDark
                        : kGreyLight),
                borderRadius: kRadius10),
            child: Column(
              children: [
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Signature', style: textHeadRegular2),
                    kWidth10,
                    Icon(Icons.edit,
                        color: state.orderCompletionError &&
                                state.signatureImage == null
                            ? kRedDark
                            : kBlack)
                  ],
                )),
                state.signatureImage != null ? kHeight10 : kEmpty,
                state.signatureImage != null
                    ? Stack(
                        children: [
                          AspectRatio(
                            aspectRatio: 2,
                            child: Image.file(
                              state.signatureImage!.fileImage,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: InkWell(
                              onTap: () => context.read<OrdersBloc>().add(
                                  const OrdersEvent.removeSignatureImage()),
                              child: const CircleAvatar(
                                backgroundColor: kBluePrimary,
                                child:
                                    Icon(Icons.delete, color: kWhite, size: 20),
                              ),
                            ),
                          )
                        ],
                      )
                    : kEmpty
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showSignaturePad(BuildContext context) async {
    final SignatureController controller = SignatureController(
      penStrokeWidth: 3,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );

    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Draw Signature', style: textHeadBold1),
              ),
              Container(
                height: 600,
                width: 600,
                decoration:
                    BoxDecoration(border: Border.all(color: kGreyLight)),
                child: Signature(
                  controller: controller,
                  height: 600,
                  width: 600,
                  backgroundColor: kWhite,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                controller.clear();
                Navigator.pop(context);
              },
              child: const Text('Cancel', style: TextStyle(color: kRed)),
            ),
            TextButton(
              onPressed: () => controller.clear(),
              child: const Text('Clear', style: TextStyle(color: kBluePrimary)),
            ),
            TextButton(
              onPressed: () async {
                if (controller.isNotEmpty) {
                  final Uint8List? data = await controller.toPngBytes();
                  if (data != null) {
                    final tempDir = await getTemporaryDirectory();
                    final file = await File(
                            '${tempDir.path}/signature_${DateTime.now().millisecondsSinceEpoch}.png')
                        .create();
                    await file.writeAsBytes(data);

                    final base64String =
                        'data:image/png;base64,${base64Encode(data)}';

                    if (context.mounted) {
                      context.read<OrdersBloc>().add(
                          OrdersEvent.addSignatureImage(
                              signature: ImageModel(
                                  base64Image: base64String, fileImage: file)));
                      Navigator.pop(context);
                    }
                  }
                }
              },
              child: const Text('Save', style: TextStyle(color: kGreenPrimary)),
            ),
          ],
        );
      },
    );
  }
}
