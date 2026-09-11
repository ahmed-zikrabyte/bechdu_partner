import 'package:bechdu_partner/application/business_logic/transcation/transcation_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/pdf/pdf_preview.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:bechdu_partner/domain/model/transcaton/manual_transcation_response_model/transcation_cash_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PendingTranscationSession extends StatelessWidget {
  const PendingTranscationSession({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TranscationBloc, TranscationState>(
      builder: (context, state) {
        if (state.isLoading) {
          return ShimmerLoader(
              itemCount: 1,
              height: 180,
              width: sWidth,
              scrollDirection: Axis.vertical);
        } else if (state.manuelTranscations != null &&
            state.manuelTranscations!.isNotEmpty) {
          return SizedBox(
            height: 230,
            child: PageView.builder(
                itemCount: state.manuelTranscations?.length ?? 0,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ManualTranscationItem(
                      data: state.manuelTranscations![index]);
                }),
          );
        } else {
          return kEmpty;
        }
      },
    );
  }
}

class ManualTranscationItem extends StatefulWidget {
  final TranscationCashModel data;
  const ManualTranscationItem({super.key, required this.data});

  @override
  State<ManualTranscationItem> createState() => _ManualTranscationItemState();
}

class _ManualTranscationItemState extends State<ManualTranscationItem> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TranscationBloc, TranscationState>(
      listener: (context, state) {
        if (state.downloaded && loading && state.invoice != null) {
          loading = false;
          Navigator.pushNamed(context, Routes.pdfPage,
              arguments: PreviewArguments(
                  base64: state.invoice!, fileName: 'Transcation'));
        }
        if (state.hasError && loading) {
          loading = false;
        }
      },
      child: GestureDetector(
        onTap: () {
          if (widget.data.status == 'approved' && widget.data.id != null) {
            context
                .read<TranscationBloc>()
                .add(TranscationEvent.downloadInvoice(id: widget.data.id!));
            setState(() {
              loading = true;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('${getFirstCapital(widget.data.status)} Transaction',
                  style: textHeadBoldBig),
              kHeight10,
              Container(
                height: 168,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(), borderRadius: kRadius15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      kHeight10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('${widget.data.coins ?? '--'} Points',
                                overflow: TextOverflow.ellipsis,
                                style: textHeadMediumBig.copyWith(
                                    fontSize: sWidth * 0.06)),
                          ),
                          Row(
                            children: [
                              Text('₹ ${widget.data.totalPrice ?? '----'}',
                                  style: textHeadBoldBig2.copyWith(
                                      color: widget.data.status == 'approved'
                                          ? kGreenPrimary
                                          : kRedDark)),
                            ],
                          )
                        ],
                      ),
                      kHeight20,
                      ColoredBox(
                        color: kBluelight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            kWidth5,
                            Expanded(
                              child: Text(
                                widget.data.status == 'Pending'
                                    ? 'Points will be credited, when admin verify your transcation'
                                    : widget.data.message ?? '',
                                style: textHeadRegular1,
                              ),
                            ),
                            kWidth10,
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: getTranscationStatusColor(
                                  widget.data.status ?? ''),
                            ),
                            widget.data.status == 'Pending'
                                ? kEmpty
                                : Text(
                                    ' ${getFirstCapital(widget.data.status)}',
                                    style: textHeadSemiBold1.copyWith(
                                        color: getTranscationStatusColor(
                                            widget.data.status ?? '')),
                                  ),
                            kWidth5
                          ],
                        ),
                      ),
                      kHeight10,
                      loading
                          ? LinearProgressIndicator(
                              color: kGreenPrimary,
                              backgroundColor: kGreyLight.withOpacity(0.2),
                            )
                          : kEmpty
                    ]),
              ),
              kHeight20
            ],
          ),
        ),
      ),
    );
  }
}
