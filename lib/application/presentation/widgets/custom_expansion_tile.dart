import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile(
      {super.key,
      this.isExpandable = true,
      required this.children,
      required this.title,
      this.expandLess = Icons.expand_less,
      this.expandMore = Icons.expand_more,
      this.onTap,
      required this.subTitle});
  final List<Widget> children;
  final Widget title;
  final Widget subTitle;
  final bool isExpandable;
  final IconData expandLess;
  final IconData expandMore;
  final VoidCallback? onTap;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: widget.onTap ??
              () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
          splashFactory: NoSplash.splashFactory,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: widget.title),
                    widget.isExpandable
                        ? Icon(
                            isExpanded ? widget.expandLess : widget.expandMore,
                            color: kBlack,
                          )
                        : kEmpty,
                  ],
                ),
                widget.subTitle
              ],
            ),
          ),
        ),
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 300),
          crossFadeState:
              isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          firstChild: kEmpty,
          secondChild: Column(
            children: widget.children,
          ),
        ),
      ],
    );
  }
}
