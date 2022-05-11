import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        //Spacer(),
        GestureDetector(
          child: Row(
            children: [
              Text(
                'See all',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black45),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black45,
              )
            ],
          ),
          onTap: onPressed,
        )
      ],
    );
  }
}
