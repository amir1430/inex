// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

Future<void> showConfirmDialog(
  BuildContext context, {
  VoidCallback? onConfirm,
  VoidCallback? onDeny,
  String confirmText = 'Ok',
  String denyText = 'Cancel',
  required String title,
}) async {
  await showDialog<void>(
    context: context,
    builder: (context) {
      return ConfirmWidget(
        title: title,
        confirmText: confirmText,
        denyText: denyText,
        onConfirm: onConfirm,
        onDeny: onDeny,
      );
    },
  );
}

class ConfirmWidget extends StatelessWidget {
  const ConfirmWidget({
    super.key,
    required this.title,
    required this.confirmText,
    required this.denyText,
    this.onDeny,
    this.onConfirm,
  });

  final VoidCallback? onConfirm;
  final VoidCallback? onDeny;
  final String confirmText;
  final String denyText;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      actions: [
        TextButton(
          onPressed: () {
            if (onDeny != null) {
              onDeny?.call();
              return;
            }
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
          child: Text(denyText),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {
            if (onConfirm != null) {
              onConfirm?.call();
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
              return;
            }
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
          child: Text(confirmText),
        ),
      ],
    );
  }
}
