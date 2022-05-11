import 'package:fin_ui/widgets/custom_header.dart';
import 'package:fin_ui/widgets/transaction.dart';
import 'package:flutter/material.dart';
import '';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          title: 'Last Transaction',
          onPressed: () {},
        ),
        ...latestTransactions
            .map((e) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Transaction(
                    title: e['name'],
                    time: e['date'],
                    cost: e['cost'],
                    color: e['color'],
                    iconData: e['icon'],
                  ),
                ))
            .toList()
      ],
    );
  }
}

final latestTransactions = <Map<String, dynamic>>[
  {
    'name': 'Shopping',
    'icon': Icons.storefront,
    'date': '2022/01/06 | 10:34 AM',
    'cost': '98.21',
    'color': const Color(0xFFEDEE),
  },
  {
    'name': 'House',
    'icon': Icons.home,
    'date': '2022/01/06 | 10:34 AM',
    'cost': '98.21',
    'color': const Color(0xFFEDEE),
  },
  {
    'name': 'Phone',
    'icon': Icons.phone_android,
    'date': '2022/01/06 | 10:34 AM',
    'cost': '98.21',
    'color': const Color(0xFFEDEE),
  },
  {
    'name': 'Shopping',
    'icon': Icons.shop,
    'date': '2022/01/06 | 10:34 AM',
    'cost': '98.21',
    'color': const Color(0xFFEDEE),
  },
];
