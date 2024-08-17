import 'package:bookly/Features/home/presentation/views/widgets/horizontol_item.dart';
import 'package:flutter/material.dart';

class HorizontolListView extends StatelessWidget {
  const HorizontolListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const HorizonotlItem();
        },
        scrollDirection: Axis.horizontal,
        itemCount: 3,
      ),
    );
  }
}
