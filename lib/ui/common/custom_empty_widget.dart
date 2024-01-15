import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class CustomEmptyWidget extends StatelessWidget {
  const CustomEmptyWidget({
    required this.retryCallback,
    super.key,
    this.icon,
    this.emptyText,
  });

  final String? icon;
  final String? emptyText;
  final VoidCallback retryCallback;

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        if (icon == null)
          Icon(
            Icons.warning,
            size: 32,
            color: context.theme.colorScheme.primary,
          )
        else
          Image.asset(
            icon!,
            width: 103,
            height: 103,
          ),
        if (emptyText != null) ...[
          20.heightBox,
          emptyText!.text.isIntrinsic.make(),
        ],
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).onTap(
      retryCallback,
      hitTestBehavior: HitTestBehavior.opaque,
    );
  }
}
