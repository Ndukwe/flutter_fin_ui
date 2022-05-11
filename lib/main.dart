import 'package:fin_ui/widgets/current_balance.dart';
import 'package:fin_ui/widgets/my_goals.dart';
import 'package:fin_ui/widgets/nav_button.dart';
import 'package:fin_ui/widgets/transactions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pay.Obu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.notifications_active),
          onPressed: () {},
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              foregroundImage: AssetImage('assets/images/nd.jpg'),
              child: Text('N'),
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Divider(
                height: 24,
              ),
              CurrentBalance(
                balance: '34495580',
                growth: '1.76',
              ),
              SizedBox(
                height: 12,
              ),
              Transactions(),
              MyGoals(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavButton(iconData: Icons.home, onPressed: () {}, selected: true),
            NavButton(
              iconData: Icons.savings,
              onPressed: () {},
            ),
            NavButton(
              iconData: Icons.send,
              onPressed: () {},
            ),
            NavButton(
              iconData: Icons.paid,
              onPressed: () {},
            ),
            NavButton(
              iconData: Icons.settings,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
