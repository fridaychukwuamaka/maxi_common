import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/src/provider/user_provider.dart';
import 'package:maxi_common/src/themes/themes.dart';

class DrawerUserInfo extends ConsumerWidget {
  const DrawerUserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final user = ref.watch(userProvider);
    String firstname = user.firstName ?? '';
    String lastName = user.lastName ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            CircleAvatar(
              radius: 37,
            ),
          ],
        ),
        const SizedBox(height: 13),
        Text(
          '$firstname $lastName',
          style: AppTextStyle.button,
        ),
      ],
    );
  }
}
