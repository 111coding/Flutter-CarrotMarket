import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefresherFooter extends StatelessWidget {
  const RefresherFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomFooter(
      loadStyle: LoadStyle.ShowAlways,
      builder: (context, mode) {
        if (mode == LoadStatus.loading) {
          return const SizedBox(
            height: 60.0,
            child: SizedBox(
              height: 20.0,
              width: 20.0,
              child: CupertinoActivityIndicator(
                color: Colors.orange,
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
