import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    required this.errorText,
    required this.retryCallback,
    super.key,
  });

  final String errorText;
  final VoidCallback retryCallback;

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        Icon(
          Icons.warning,
          size: 32,
          color: context.theme.colorScheme.primary,
        ),
        20.heightBox,
        errorText.text.isIntrinsic.make(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).centered().onTap(
          retryCallback,
          hitTestBehavior: HitTestBehavior.opaque,
        );
  }
}
