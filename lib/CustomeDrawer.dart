import 'package:flutter/material.dart';

import 'custom_animated_bottom_bar.dart';
import 'first_screen.dart';
import 'fourth_screen.dart';
import 'home_screen.dart';
import 'messages_screen.dart';
import 'profile_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   //  shadowColor: Colors.green,
      //    primarySwatch: Colors.blue,
      //
      //  // secondaryHeaderColor: Colors.blueAccent
      // ),

      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum ScreenType {
  firstScreen,
  secondScreen,
  thirdScreen,
  forthScreen,
  home,
  messages,
  profile
}

class _MyHomePageState extends State<MyHomePage> {
  ScreenType _screenType = ScreenType.home;
  final _inactiveColor = Colors.grey;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(getTitle(_screenType)),
      ),
      drawer:Drawer(

        child: Container(
          width: MediaQuery.of(context).size.shortestSide,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                color: Colors.blue,
                child:    DrawerHeader(



                    child:Row(

                      children: [
                        Container(
                          height: 80,
                          width: 80,

                          padding: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // Set border width
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0)),
                          ),
                          child: Image.asset('asset/img.png'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10),

                          child: Column(

                            children: [
                              Padding(padding: EdgeInsets.only(bottom: 30),child:
                              Text("IGEX",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'PlayFair'),),),
                              Text('igexsol12@gmail.com',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'PlayFair'),),
                              Text('+91234567890',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'PlayFair'),)
                            ],
                          ),
                        )
                      ],
                    )

                ),
              ),





            ],

          ),

        ),


      ),

      body: _body(_screenType),
    //  bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _body(ScreenType screenType) {
    switch (screenType) {
      case ScreenType.firstScreen:
        return FirstScreen(
          voidCallback: () => onTabTapped(ScreenType.forthScreen),
        );
      case ScreenType.secondScreen:
        return const SecondScreen();
      case ScreenType.thirdScreen:
        return const ThirdScreen();
      case ScreenType.forthScreen:
        return const ForthScreen();
      case ScreenType.home:
        return const HomeScreen();
      case ScreenType.messages:
        return const MessagesScreen();
      case ScreenType.profile:
        return const ProfileScreen();
    }
  }

  // Widget _buildBottomBar() {
  //   return CustomAnimatedBottomBar(
  //     backgroundColor: Colors.white,
  //     selectedIndex: _screenType,
  //     //  showElevation: true,
  //     // itemCornerRadius: 24,
  //     // curve: Curves.easeIn,
  //     onItemSelected: onTabTapped,
  //     items: <BottomNavyBarItem>[
  //       BottomNavyBarItem(
  //         screenType: ScreenType.home,
  //         icon: const Icon(Icons.apps),
  //         title: const Text('HOME'),
  //         // activeColor: Colors.green,
  //         inactiveColor: _inactiveColor,
  //         // textAlign: TextAlign.center,
  //       ),
  //       BottomNavyBarItem(
  //         screenType: ScreenType.messages,
  //         icon: const Icon(Icons.message),
  //         title: const Text('MESSAGE'),
  //         //  activeColor: Colors.purpleAccent,
  //         inactiveColor: _inactiveColor,
  //         // textAlign: TextAlign.center,
  //       ),
  //       BottomNavyBarItem(
  //         screenType: ScreenType.profile,
  //         icon: const Icon(Icons.account_circle_rounded),
  //         title: const Text('PROFILE'),
  //         //  activeColor: Colors.pink,
  //         inactiveColor: _inactiveColor,
  //         textAlign: TextAlign.justify,
  //       ),
  //       BottomNavyBarItem(
  //         screenType: ScreenType.firstScreen,
  //         icon: const Icon(Icons.settings),
  //         title: const Text('SETTINGS'),
  //         // activeColor: Colors.green,
  //         inactiveColor: _inactiveColor,
  //         // textAlign: TextAlign.center,
  //       ),
  //     ],
  //   );
  // }

  void onTabTapped(ScreenType screenType) {
    if ((_scaffoldKey.currentState ?? ScaffoldState()).isDrawerOpen) {
      (_scaffoldKey.currentState ?? ScaffoldState()).openEndDrawer();
    }
    setState(() {
      _screenType = screenType;
    });
  }

  String getTitle(ScreenType screenType) {
    switch (screenType) {
      case ScreenType.firstScreen:
        return "First Screen";
      case ScreenType.secondScreen:
        return "Second Screen";
      case ScreenType.thirdScreen:
        return "Third Screen";
      case ScreenType.forthScreen:
        return "Forth Screen";
      case ScreenType.home:
        return "Home";
      case ScreenType.messages:
        return "Messages";
      case ScreenType.profile:
        return "Profile";
    }
  }
}
