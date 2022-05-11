import 'package:fin_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction(
      {Key? key,
      required this.iconData,
      required this.color,
      required this.title,
      required this.cost,
      required this.time})
      : super(key: key);
  final String title;
  final Color color;
  final String time;
  final IconData iconData;
  final String cost;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar(color: color, icon: iconData),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8),
              Text(
                time,
                style: TextStyle(fontSize: 12, color: Colors.black45),
              ),
            ],
          ),
        ),
        Text(
          '-\# $cost',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
