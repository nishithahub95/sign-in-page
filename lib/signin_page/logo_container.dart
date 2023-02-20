import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class logoCotainer extends StatelessWidget {
  const logoCotainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width:MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffC33764),Color(0xff1D2671)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)
      ),
      child:Center(child: SvgPicture.asset('assets/bird.svg',width: 100,height: 100,)) ,
    );
  }
}