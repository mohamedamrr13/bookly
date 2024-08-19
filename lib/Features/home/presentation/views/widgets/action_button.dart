import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ))),
                onPressed: () {},
                child: Text('19.99€',
                    style: Styles.textStyle18.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ))),
          ),
          Expanded(
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffEF8262),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ))),
                onPressed: () {},
                child: Text('Free preview',
                    style: Styles.textStyle18.copyWith(color: Colors.white))),
          )
        ],
      ),
    );
  }
}
