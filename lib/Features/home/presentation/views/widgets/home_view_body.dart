import 'package:bookly/Features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_listview.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(child: CustomAppBar()),
              SizedBox(
                height: 250,
                child: FeaturedListView(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0, left: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
