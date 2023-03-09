import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/images_string.dart';
import '../../../utils/HelperClassWidget.dart';

class buildwalletitems extends StatelessWidget {
  final String title, amount;
  const buildwalletitems({Key? key, required this.title, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        addVerticalSpace(5),
        Divider(
          color: Colors.grey,
        ),
        addVerticalSpace(5),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              amount,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            addHorizontalSpace(10),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Color(0xffC41B24),
                borderRadius: BorderRadius.circular(50),
              ),
              child: SvgPicture.asset(
                iconmoreaboutus,
                width: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
