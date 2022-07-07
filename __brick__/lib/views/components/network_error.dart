import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{name}}/views/components/components.dart';

class NetworkError extends StatelessWidget {
  const NetworkError({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AutoSizeText(
          'An error occurred',
          style: TextStyle(
              color: Color(0XFF151212),
              fontSize: 18,
              fontWeight: FontWeight.w400),
          textAlign: TextAlign.start,
          minFontSize: 17,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 16),
        Container(
            height: 50,
            width: Get.width * 0.5,
            child: PrimaryButton(
                color: Theme.of(context).colorScheme.primary,
                padding: const EdgeInsets.all(8),
                labelText: 'Try again',
                onPressed: onPressed))
      ],
    ));
  }
}
