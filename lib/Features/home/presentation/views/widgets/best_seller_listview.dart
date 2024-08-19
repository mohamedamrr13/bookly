import 'package:bookly/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(AppRouter.detailsviewPath),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 100,
          itemBuilder: (context, index) {
            return const BestSellerItem();
          },
        ),
      ),
    );
  }
}
