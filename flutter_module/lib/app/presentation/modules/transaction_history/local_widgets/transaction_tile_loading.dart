import 'package:flutter/material.dart';

import '../../../../core/common_widgets/app_shimmer.dart';
import '../../../../core/theme/app_color.dart';

class TransactionTileLoading extends StatelessWidget {
  const TransactionTileLoading() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: AppColor.white,
      ),
      child: Column(
        children: [
          ListTile(
            leading: _loadingLeading(),
            title: _loadingTitle(),
            subtitle: _loadingSubtitle(),
          ),
          Divider(
            color: AppColor.divider,
            indent: MediaQuery.of(context).size.width * 0.2,
          )
        ],
      ),
    );
  }

  Widget _loadingSubtitle() => AppShimmer(
        child: Container(
          width: 100,
          height: 12,
          margin: const EdgeInsets.only(right: 150),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: AppColor.rappi,
          ),
        ),
      );

  Widget _loadingTitle() => AppShimmer(
        child: Container(
          width: 100,
          height: 15,
          margin: const EdgeInsets.only(right: 40),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: AppColor.rappi,
          ),
        ),
      );

  Widget _loadingLeading() => AppShimmer(
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.rappi,
            border: Border.all(width: 2.0, color: AppColor.white),
          ),
        ),
      );
}
