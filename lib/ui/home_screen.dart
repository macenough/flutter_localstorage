import 'package:flutter/material.dart';
import 'package:shared_pref_demo/main.dart';
import 'package:shared_pref_demo/ui/splash_screen.dart';
import 'package:shared_pref_demo/utils/shared_pref_util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello ..............."),
              Text(SharedPrefsUtils().getUname),
              ElevatedButton(
                  onPressed: () {
                    SharedPrefsUtils().clearData();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SplashScreen()));
                  },
                  child: Text("Logout"))
            ],
          ),
        ),
      ),
    );
  }
}
