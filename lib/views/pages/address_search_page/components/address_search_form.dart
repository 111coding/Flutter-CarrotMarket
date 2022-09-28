import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/utils/simple_snackbar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressSearchForm extends StatefulWidget {
  const AddressSearchForm({Key? key}) : super(key: key);

  @override
  AddressSearchFormState createState() => AddressSearchFormState();
}

class AddressSearchFormState extends State<AddressSearchForm> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer(
          builder: (context, ref, child) {
            return TextField(
              controller: textController,
              textInputAction: TextInputAction.search, // 완료 버튼 검색으로!
              decoration: _decoration(),

              onSubmitted: (v) => _onSubmit(v, ref),
            );
          },
        ),
      ],
    );
  }

  void _onSubmit(String? v, WidgetRef ref) {
    if ((v?.length ?? 0) < 2) {
      SimpleSnackbar.show(context, "2글자 이상 입력해 주세요");
      return;
    }
    // TODO 서버연동
  }

  InputDecoration _decoration() {
    return const InputDecoration(
      hintText: "동명(읍, 면)으로 검색(ex. 서초동)",
      prefixIcon: Icon(
        Icons.search,
        color: Colors.grey,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ), // 포커스 받았을 때 기존 색상과 동일
    );
  }
}
