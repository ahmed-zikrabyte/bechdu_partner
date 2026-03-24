import 'dart:io';
import 'dart:typed_data';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/pdf/pdf_preview.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';

class OrderInvoiceDownload extends StatefulWidget {
  const OrderInvoiceDownload({super.key});

  @override
  State<OrderInvoiceDownload> createState() => _OrderInvoiceDownloadState();
}

class _OrderInvoiceDownloadState extends State<OrderInvoiceDownload> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrdersBloc, OrdersState>(
      listener: (context, state) async {
        if (state.downloaded && state.orderInvoice != null) {
          setState(() {
            isLoading = false;
          });

          // Navigate to PDF preview directly like transactions do
          Navigator.pushNamed(
            context,
            Routes.pdfPage,
            arguments: PreviewArguments(
              base64: state.orderInvoice!,
              fileName: state.orderDetail?.orderId ?? 'BECHDU',
            ),
          );
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                    color: kGreyLight,
                  ),
                ],
                color: kWhite,
                borderRadius: kRadius5,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Download Order Invoice', style: textHeadBold1),
                  StatusColoredBox(
                    text: isLoading ? 'Downloading...' : 'Download',
                    color: kBluePrimary,
                    onTap: () {
                      if (!isLoading) {
                        setState(() {
                          isLoading = true;
                        });
                        context.read<OrdersBloc>().add(
                              OrdersEvent.downloadOrderInvoice(
                                orderId: state.orderDetail!.id!,
                              ),
                            );
                      }
                    },
                  ),
                ],
              ),
            ),
            isLoading
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: LinearProgressIndicator(
                      borderRadius: kRadius50,
                      backgroundColor: kGreyLighter,
                      color: kBluePrimary,
                    ),
                  )
                : kEmpty,
          ],
        );
      },
    );
  }

  Future<void> savePdfToDownloads(Uint8List bytes, String fileName) async {
    try {
      String? filePath;
      if (Platform.isAndroid) {
        filePath = '/storage/emulated/0/Download/$fileName';
      } else {
        final directory = await getApplicationDocumentsDirectory();
        filePath = '${directory.path}/$fileName';
      }
      final file = File(filePath);
      await file.writeAsBytes(bytes);
      print('PDF saved to $filePath');
    } catch (e) {
      print('Error saving PDF: $e');
      rethrow;
    }
  }
}
