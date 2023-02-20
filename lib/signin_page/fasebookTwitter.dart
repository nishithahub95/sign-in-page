import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FaceTwitterIcon extends StatefulWidget {
  const FaceTwitterIcon({Key? key}) : super(key: key);

  @override
  State<FaceTwitterIcon> createState() => _FaceTwitterIconState();
}

class _FaceTwitterIconState extends State<FaceTwitterIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/facebook.svg',height: 30,width: 30,),
          SizedBox(width: 20,),
          SvgPicture.asset('assets/twitter.svg',height: 30,width: 30)

        ],
      ),
    );
  }
}
