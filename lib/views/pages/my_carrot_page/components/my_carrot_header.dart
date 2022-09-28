import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/data/address/provider/address_provider.dart';
import 'package:flutter_carrotmarket/data/user/provider/user_provider.dart';
import 'package:flutter_carrotmarket/views/components/user_profile_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            const SizedBox(height: 30),
            _buildProfileButton(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton('판매내역', FontAwesomeIcons.receipt),
                _buildRoundTextButton('구매내역', FontAwesomeIcons.bagShopping),
                _buildRoundTextButton('관심목록', FontAwesomeIcons.heart),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Consumer(
      builder: (context, ref, child) {
        final user = ref.watch(userProvider);
        final address = ref.watch(addressProvider).where((e) => e.defaultYn ?? false).first;
        return Row(
          children: [
            Stack(
              children: [
                UserProfileImage(user: user!, size: 60),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.grey[100]),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
            eWidth(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.nickname, style: textTheme().headline2),
                eHeight(10),
                Text('${address.displayName} #${NumberFormat("00000").format(user.idx)}'),
              ],
            )
          ],
        );
      },
    );
  }

  Widget _buildProfileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFD4D5DD),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        height: 45,
        child: Center(
          child: Text(
            '프로필기 보기',
            style: textTheme().subtitle1,
          ),
        ),
      ),
    );
  }

  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0), color: Color.fromRGBO(255, 226, 208, 1), border: Border.all(color: Color(0xFFD4D5DD), width: 0.5)),
          child: Icon(
            iconData,
            color: Colors.orange,
          ),
        ),
        eHeight(10),
        Text(
          title,
          style: textTheme().subtitle1,
        )
      ],
    );
  }
}
