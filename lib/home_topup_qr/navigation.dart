import 'package:flutter/material.dart';
import 'package:mo_pay/home_topup_qr/home.dart';
import 'package:mo_pay/home_topup_qr/home1.dart';
import 'package:mo_pay/home_topup_qr/nearby.dart';
import 'package:mo_pay/home_topup_qr/user.dart';

void main() {
  runApp(const Navigation());
}

class Navigation extends StatelessWidget {
  const Navigation({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  final _pages = const [
    Home1(),
    Home(),
    Nearby(),
    User()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: Container(
        child: NavigationBar(
          destinations: [
            NavigationDestination(icon: Image.asset('assets/images/home.png'), label: 'Home'),
            NavigationDestination(icon: Image.asset('assets/images/history.png'), label: 'History'),
            NavigationDestination(icon: Image.asset('assets/images/near.png'), label: 'Near By'),
            NavigationDestination(icon: Image.asset('assets/images/user.png'), label: 'User'),
          ],
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() => _selectedIndex = index);
          },
        ),
      ),
    );
  }
}
