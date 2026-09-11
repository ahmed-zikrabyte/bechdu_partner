import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/slidable_image_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IdCardAndDeviceBillSession extends StatelessWidget {
  const IdCardAndDeviceBillSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// 📄 Device Bill
        BlocBuilder<OrdersBloc, OrdersState>(
          buildWhen: (previous, current) =>
              previous.deviceBill != current.deviceBill ||
              previous.orderCompletionError != current.orderCompletionError,
          builder: (context, state) {
            return InkWell(
              onTap: () => context
                  .read<OrdersBloc>()
                  .add(const OrdersEvent.addDiviceBill()),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width:
                        state.orderCompletionError && state.deviceBill == null
                            ? 2
                            : 1,
                    color:
                        state.orderCompletionError && state.deviceBill == null
                            ? kRedDark
                            : kGreyLight,
                  ),
                  borderRadius: kRadius10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Device Bill', style: textHeadRegular2),
                        kWidth10,
                        Icon(Icons.camera_outlined,
                            color: state.orderCompletionError &&
                                    state.deviceBill == null
                                ? kRedDark
                                : kBlack),
                      ],
                    ),
                    state.deviceBill != null ? kHeight10 : kEmpty,
                    state.deviceBill != null
                        ? AspectRatio(
                            aspectRatio: 1,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () => Navigator.pushNamed(
                                    context,
                                    Routes.imagePreviewPage,
                                    arguments: state.deviceBill!.fileImage.path,
                                  ),
                                  child: Image.file(
                                    state.deviceBill!.fileImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 3,
                                  right: 3,
                                  child: InkWell(
                                    onTap: () => context.read<OrdersBloc>().add(
                                        const OrdersEvent.removeDiviceBill()),
                                    child: const CircleAvatar(
                                      backgroundColor: kBluePrimary,
                                      child: Icon(Icons.delete, color: kWhite),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        : kEmpty,
                  ],
                ),
              ),
            );
          },
        ),

        kHeight20,

        /// 🪪 ID Card
        BlocBuilder<OrdersBloc, OrdersState>(
          buildWhen: (previous, current) =>
              previous.idCard != current.idCard ||
              previous.orderCompletionError != current.orderCompletionError,
          builder: (context, state) {
            return InkWell(
              onTap: () => context
                  .read<OrdersBloc>()
                  .add(const OrdersEvent.addIdCardImage()),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: state.orderCompletionError &&
                            (state.idCard == null || state.idCard!.isEmpty)
                        ? 2
                        : 1,
                    color: state.orderCompletionError &&
                            (state.idCard == null || state.idCard!.isEmpty)
                        ? kRedDark
                        : kGreyLight,
                  ),
                  borderRadius: kRadius10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('ID Card', style: textHeadRegular2),
                        kWidth10,
                        Icon(Icons.camera_outlined,
                            color: state.orderCompletionError &&
                                    (state.idCard == null ||
                                        state.idCard!.isEmpty)
                                ? kRedDark
                                : kBlack),
                      ],
                    ),
                    state.idCard != null && state.idCard!.isNotEmpty
                        ? kHeight10
                        : kEmpty,
                    state.idCard != null && state.idCard!.isNotEmpty
                        ? AspectRatio(
                            aspectRatio: 1 / .5,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) => kWidth20,
                              itemCount: state.idCard!.length < 2
                                  ? state.idCard!.length +
                                      1 // Include "Add" button
                                  : state.idCard!.length,
                              itemBuilder: (context, index) {
                                // Show add button as the FIRST item
                                if (state.idCard!.length < 2 && index == 0) {
                                  return InkWell(
                                    onTap: () => context.read<OrdersBloc>().add(
                                        const OrdersEvent.addIdCardImage()),
                                    child: const AspectRatio(
                                      aspectRatio: .8,
                                      child: ColoredBox(
                                        color: kGreyLighter,
                                        child: Center(
                                          child: Icon(Icons.add_a_photo),
                                        ),
                                      ),
                                    ),
                                  );
                                }

                                // Adjust index if "Add" button is shown
                                final actualIndex = state.idCard!.length < 2
                                    ? index - 1
                                    : index;

                                return Stack(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: .8,
                                      child: InkWell(
                                        onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                ScreenSlidablePhotoGallery(
                                              images: state.idCard!
                                                  .map((e) => e.base64Image)
                                                  .toList(),
                                              initialIndex: actualIndex,
                                            ),
                                          ),
                                        ),
                                        child: Image.file(
                                          state.idCard![actualIndex].fileImage,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 3,
                                      right: 3,
                                      child: InkWell(
                                        onTap: () {
                                          context.read<OrdersBloc>().add(
                                              OrdersEvent.removeIdCardImage(
                                                  index: actualIndex));
                                        },
                                        child: const CircleAvatar(
                                          backgroundColor: kBluePrimary,
                                          child:
                                              Icon(Icons.delete, color: kWhite),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          )
                        : kEmpty,
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
