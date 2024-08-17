import 'package:bookly/Features/home/presentation/views/widgets/rating_model.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AssetsData.testImage))),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: AssetsData.kGtSectraFine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'J.K. Rowling',
                      style: Styles.textStyle14,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(children: [
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        '19.99 €',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const RatingModel()
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
