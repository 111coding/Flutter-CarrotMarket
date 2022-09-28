import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Widget? mainFlotingButton(int index) => index == 0 ? CarrotFloatingButton(index: index) : null;

class CarrotFloatingButton extends ConsumerStatefulWidget {
  const CarrotFloatingButton({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  CarrotFloatingButtonState createState() => CarrotFloatingButtonState();
}

class CarrotFloatingButtonState extends ConsumerState<CarrotFloatingButton> {
  void writeProduct() async {
    Routes.productWrite.push();
  }

  final _floatingBtnSize = 56.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: _floatingBtnSize,
      child: FloatingActionButton(
        onPressed: () => writeProduct(),
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
