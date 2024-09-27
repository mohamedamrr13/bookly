import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.bookModel});
  final BookModel bookModel;
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
                child: Text('Free',
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
                onPressed: () async {
                  // ignore: unused_local_variable
                  final Uri url =
                      Uri.parse(bookModel.volumeInfo.previewLink ?? '');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                child: Text(getPreviewButtonText(),
                    style: Styles.textStyle18.copyWith(color: Colors.white))),
          )
        ],
      ),
    );
  }

  String getPreviewButtonText() {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
