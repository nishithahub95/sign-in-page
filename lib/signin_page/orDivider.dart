import 'package:flutter/material.dart';


class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      width: 150,
      child: Row(
        children: [
          buildDivider(),
          SizedBox(width: 5,),
          Container(

            decoration: BoxDecoration(
                border: Border.all(color:  Color(0xff1D2671)),
                shape: BoxShape.circle
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('OR'),
            ),
          ),
          SizedBox(width: 5,),
          buildDivider(),
        ],
      ),
    );

  }

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Color(0xffC33764),
        height: 1.5,

      ),
    );
  }
}