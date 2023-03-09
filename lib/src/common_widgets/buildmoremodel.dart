
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../features/moreScreen/Model/MoreModel.dart';

class buildmoremodel extends StatelessWidget {
  const buildmoremodel({Key? key, required this.moreModel}) : super(key: key);
  final MoreModel moreModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading:  Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xffC41B24),
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset(
              moreModel.icon,
              width: 20,
              color: Colors.white,
            ),
          ),
          title:  Text(moreModel.title),
          trailing:  Icon(Icons.arrow_forward_ios, color: Colors.grey,),
          onTap: () {},
        ),
        Divider(
          height: 1,
          color: Colors.grey[700],
        ),

      ],
    );
  }
}
