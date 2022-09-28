import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/utils/simple_snackbar.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductWritePictureUploadBox extends ConsumerWidget {
  const ProductWritePictureUploadBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(productWriteViewModel).imageFiles;
    return Container(
      padding: vPadding(verticalPadding: 8),
      child: GestureDetector(
        onTap: () => uploadImage(context, ref),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.camera_alt),
                Text("${items.length}/10"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void uploadImage(BuildContext context, WidgetRef ref) async {
    final message = await ref.read(productWriteViewModel.notifier).uploadImage();
    if (message != null) {
      // ignore: use_build_context_synchronously
      SimpleSnackbar.show(context, message);
    }
  }
}
