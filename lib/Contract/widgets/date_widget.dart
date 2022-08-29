import 'package:flutter/cupertino.dart';

class DateWidget extends StatelessWidget {
  final Color textColor;
  final Color color;
  final String day;
  final int date;
  const DateWidget({
    Key? key, required this.color, required this.day, required this.date, required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:   color,
          borderRadius: BorderRadius.circular(6)
      ),
      padding: EdgeInsets.only(bottom: 9, left: 12, right: 12, ),
      child: Column(
        children: [
          SizedBox(height: 12,),
          Text( day , style: TextStyle(color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontFamily: 'Ubuntu'),),
          SizedBox(height: 7,),
          Text( date.toString(), style: TextStyle(color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontFamily: 'Ubuntu'),),
          Text('___', style: TextStyle(color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontFamily: 'Ubuntu'),),
        ],
      ),
    );
  }
}