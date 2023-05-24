import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webclient/ui_components/defaultAppBar.dart';
import 'package:webclient/ui_components/sharedPreferences.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isWindows =
      defaultTargetPlatform == TargetPlatform.windows ? true : false;

  final String clientString = kIsWeb ? "web" : "desktop";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      backgroundColor: softColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/icons/CleaverWall_Circular_Background2.png"),
            colorFilter: ColorFilter.mode(softColor!.withOpacity(0.2), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("You are bestowed with experiencing CleaverWall on a $clientString client!", style: setFont(size: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
