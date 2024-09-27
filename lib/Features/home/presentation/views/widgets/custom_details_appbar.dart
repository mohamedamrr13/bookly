import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDetailsAppbar extends StatelessWidget {
  const CustomDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 30.0, left: 30, top: 41, bottom: 35),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                context.go(AppRouter.homeviewPath);
              },
              icon: const Icon(
                color: Colors.white,
                Icons.close,
                size: 32,
              )),
          const Spacer(),
        ],
      ),
    );
  }
}
