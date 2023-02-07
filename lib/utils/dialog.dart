import 'package:flutter/material.dart' as mat;

extension BuildContextDialogX on mat.BuildContext {
  Future<T?> showDialog<T>({
    required mat.Widget Function(mat.BuildContext context) builder,
  }) async {
    return mat.showDialog(
      context: this,
      builder: builder,
    );
  }
}
