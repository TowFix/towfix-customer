import 'package:flutter/material.dart';
import 'package:ui_common/ui_common.dart';

class TowOfferTile extends StatelessWidget {
  const TowOfferTile({
    super.key,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.isSelected,
    this.onPressed,
  });
  final String title;
  final String price;
  final String description;
  final String image;
  final bool isSelected;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
              color: isSelected
                  ? context.primaryColor
                  : Colors.black.withOpacity(0.05)),
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(
            243,
            243,
            243,
            0.56,
          ),
        ),
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(child: SizedBox(width: 100, child: Image.asset(image))),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    const SizedBox(width: 20),
                    Text('GHc $price'),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: RichText(
                    text: TextSpan(
                        text: description,
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
