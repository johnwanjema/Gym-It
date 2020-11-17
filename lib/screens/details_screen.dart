import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_flutter_way/constants.dart';
import 'package:the_flutter_way/widgets/bottom_nav_bar.dart';
import 'package:the_flutter_way/widgets/search_bar.dart';
import 'package:the_flutter_way/widgets/session_card.dart';

class DetailsScreen extends StatelessWidget {
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
                color: kBlueColor,
                image: DecorationImage(
                    image: AssetImage('assets/images/meditation_bg.png'),
                    fit: BoxFit.fitWidth)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: size.height * .005),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '3-10 MIN Course',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        width: size.width * .6,
                        child: Text(
                            'Live happier and healthier through meditation')),
                    SizedBox(width: size.width * .6, child: SearchBar()),
                    Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      children: <Widget>[
                        SessionCard(
                          sessionNum: 01,
                          isDone: true,
                          press: () {},
                        ),
                        SessionCard(sessionNum: 02, press: () {}),
                        SessionCard(sessionNum: 03, press: () {}),
                        SessionCard(sessionNum: 04, press: () {}),
                        SessionCard(sessionNum: 05, press: () {}),
                        SessionCard(sessionNum: 06, press: () {}),
                        // SessionCard(),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: kShadowColor)
                        ],
                        // image:
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                              'assets/icons/Meditation_women_small.svg'),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment : CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Basic 2',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Text('Start your practice'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
