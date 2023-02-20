import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  var icon;


   IconContainer({
   this.icon,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [
          Color(0xffC33764),
          Color(0xff1D2671)
        ]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          this.icon,
          width: 10,
          height: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
