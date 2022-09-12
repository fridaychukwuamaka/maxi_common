import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maxi_common/themes/themes.dart';

class TransactionHistoryTile extends StatelessWidget {
  const TransactionHistoryTile({
    Key? key,
    this.padding = EdgeInsets.zero,
    this.margin = const EdgeInsets.only(bottom: 20),
    this.border = const Border(),
  }) : super(key: key);

  final EdgeInsets padding;
  final EdgeInsets margin;
  final Border border;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(border: border),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.appGreenColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SvgPicture.asset('assets/icons/wallet_icon.svg'),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Earning'),
                  SizedBox(height: 2),
                  Text(
                    'April 22, 2021',
                    style: AppTextStyle.caption.copyWith(
                      color: AppColors.subtitleColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '9:00AM',
            style: AppTextStyle.caption.copyWith(
              color: AppColors.subtitleColor,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.add,
                size: 13,
                color: AppColors.appGreenColor,
              ),
              const SizedBox(width: 5),
              Text(
                ' 10,000',
                style: AppTextStyle.bodyText2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
