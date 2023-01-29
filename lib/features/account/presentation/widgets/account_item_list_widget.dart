import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AccountItemListWidget extends StatelessWidget {
   AccountItemListWidget({Key? key, required this.image, required this.text, this.onTap}) : super(key: key);
  final String image;
  final String text;
   Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
             image,
              height: 20,
              width: 20,
            ),
            const SizedBox(
              width: 15,
            ),
             Text(
              text,
              style:const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
