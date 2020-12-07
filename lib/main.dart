import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_flutter_way/constants.dart';
// import 'package:the_flutter_way/screens/details_screen.dart';
import 'package:the_flutter_way/screens/upper_body_screen.dart';
import 'package:the_flutter_way/screens/lower_body_screen.dart';
import 'package:the_flutter_way/widgets/bottom_nav_bar.dart';
import 'package:the_flutter_way/widgets/category_card.dart';
import 'package:the_flutter_way/widgets/search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor),
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //give height and width of device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image:
                        AssetImage("assets/images/undraw_pilates_gpdb.png"))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          color: Color(0xFFF2BEA1), shape: BoxShape.circle),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'Welcome to Gym It',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        categoryCard(
                          title: 'Upper Body Workouts',
                          svgSrc: 'assets/icons/Hamburger.svg',
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return UpperBodyScreen(
                                title: 'upper Body',
                                description:
                                    'Upper body resistance or strength training has a long list of benefits. It helps you boost muscle strength and endurance in your arms, back, chest, and shoulders.',
                              );
                            }));
                          },
                        ),
                        categoryCard(
                          title: 'Lower Body Workouts',
                          svgSrc: 'assets/icons/Excrecises.svg',
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LowerBodyScreen(
                                title: 'Lower Body',
                                description:
                                    'This lower body and core strength workout includes a variety of exercises targeting the glutes, hips, thighs, abs, and back.',
                              );
                            }));
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
