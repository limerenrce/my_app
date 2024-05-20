import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubit/balance/cubit/balance_cubit.dart';
import 'package:my_app/cubit/counter_cubit.dart';
import 'package:my_app/screens/datas_screen.dart';
import 'package:my_app/screens/foods_screen.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/news_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/balance_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/counter_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/custom_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/profile2_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/second_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/support_screen.dart';
import 'package:my_app/screens/routes/SpendingScreen/spending_screen.dart';
import 'package:my_app/screens/routes/showc_screen.dart';
import 'package:my_app/screens/setting_screen.dart';
import 'package:my_app/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(create: (context) => CounterCubit()),
        BlocProvider<BalanceCubit>(create: (context) => BalanceCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Home Screen'),
        routes: {
          '/second-screen': (context) => const SecondScreen(),
          '/custom-screen': (context) => const CustomScreen(),
          '/news-screen': (context) => const NewsScreen(),
          '/foods-screen': (context) => const FoodsScreen(),
          '/datas-screen': (context) => const DatasScreen(),
          '/profile-screen': (context) => const Profile2Page(),
          '/support-screen': (context) => const SupportScreen(),
          '/counter-screen': (context) => const CounterScreen(),
          '/showc-screen': (context) => const ShowcScreen(),
          '/balance-screen': (context) => const BalanceScreen(),
          '/spending-screen': (context) => const SpendingScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SettingScreen(),
    const ProfileScreen(),
    const FoodsScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Home',
    'Settings',
    'Profile',
    'Food Screen',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void navigateAndCloseDrawer(BuildContext context, String routeName) {
    if (Scaffold.of(context).isDrawerOpen) {
      Navigator.pop(context); // Close the drawer first
    }
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Profile'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Foods Screen'),
              selected: _selectedIndex == 3,
              onTap: () {
                // Update the state of the app
                _onItemTapped(3);
                // // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
