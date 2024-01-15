import 'package:flutter/material.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget._({
    required this.centered,
    super.key,
    this.loadingText,
  });

  const CustomLoadingWidget.header({
    Key? key,
    String? loadingText,
  }) : this._(
          key: key,
          loadingText: loadingText,
          centered: false,
        );

  const CustomLoadingWidget.body({
    Key? key,
    String? loadingText,
  }) : this._(
          key: key,
          loadingText: loadingText,
          centered: true,
        );

  final String? loadingText;
  final bool centered;

  @override
  Widget build(BuildContext context) {
    final widget = VStack(
      [
        if (!centered) 36.heightBox,
        LoadingAnimationWidget.twistingDots(
          size: 48,
          leftDotColor: Colors.red,
          rightDotColor: Colors.blue,
        ).centered(),
        if (loadingText != null) ...[
          16.heightBox,
          loadingText!.text.bold.bodyText1(context).isIntrinsic.make(),
        ],
      ],
      crossAlignment: CrossAxisAlignment.center,
    );
    return centered ? widget.centered() : widget;
  }
}
