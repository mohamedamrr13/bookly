import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_listview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/newest_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              CustomAppBar(),
              SizedBox(
                height: 280,
                child: FeaturedListView(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0, left: 30),
                child: Text(
                  'Newest',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: NewestListView(),
        )
      ],
    );
  }
}
