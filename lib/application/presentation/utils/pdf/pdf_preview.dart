import 'dart:convert';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/data/feature/pdf_buffer.dart';
import 'package:bechdu_partner/domain/core/di/dipendency_injection.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ScreenPdfPreview extends StatelessWidget {
  const ScreenPdfPreview({super.key, required this.argument});

  final PreviewArguments argument;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invoice'),
        actions: [
          GestureDetector(
            onTap: () async {
              await getIt<InvoiceMaker>().sharePdf(argument.base64,
                  argument.fileName, '${argument.fileName} invoice');
            },
            child: const Icon(Icons.share_outlined),
          ),
          kWidth20,
          GestureDetector(
            onTap: () async {
              showSnackBar(
                  context: context,
                  message: 'Downloading...',
                  color: kBluePrimary);
              final path = await getIt<InvoiceMaker>().downloadPdf(
                argument.base64,
                argument.fileName,
              );
              if (path != null) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  showSnackBar(
                      context: context,
                      message: 'Successfully downloaded',
                      color: kGreenPrimary);
                }
              } else {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  showSnackBar(
                      context: context,
                      message: 'Failed to download invoice',
                      color: kRed);
                }
              }
            },
            child: const Icon(Icons.download_outlined),
          ),
          kWidth20
        ],
      ),
      body: SfPdfViewer.memory(base64Decode(argument.base64),
          onDocumentLoadFailed: (_) => const Center(
                child: Text('Could not load invoice please try again'),
              )),
    );
  }
}

class PreviewArguments {
  String base64;
  String fileName;
  PreviewArguments({required this.base64, required this.fileName});
}
